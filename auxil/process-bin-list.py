#!/usr/bin/env python3
# This script generates the bin-list.zeek script.
# It uses data from: https://github.com/iannuttall/binlist-data

import csv
from itertools import count
from collections import namedtuple
import operator

Bank = namedtuple("Bank", "brand type name country")
Item = namedtuple("Item", "bank bin")

HEADER = """
@load ./bank
module CreditCardExposure;

event zeek_init()
	{
	if ( !CreditCardExposure::load_bin_list )
		return;
"""

FOOTER = """
	}
"""


def clean(s):
    return s.replace('"', '\\"')


def read_file():
    with open("binlist-data.csv") as f:
        yield from csv.DictReader(f)


def load_data():
    bins = set()

    rows = []
    for row in read_file():
        bin = row["bin"]
        if not bin.isdigit():
            continue
        if bin in bins:
            continue
        bins.add(bin)

        brand = clean(row["brand"])
        type = clean(row["type"])
        name = clean(row["issuer"])
        country = clean(row["country"])

        bank = Bank(brand, type, name, country)
        rows.append(Item(bin=bin, bank=bank))

    rows.sort()
    return rows


def main():
    rows = load_data()

    print(HEADER)
    print("\tlocal b = CreditCardExposure::bin_list;")
    print("\tlocal l: Bank;")

    last = None
    for r in rows:
        b = r.bank
        if last and b == last.bank:
            print(f"\tb[{r.bin}]=l;")
        else:
            print(f'\tb[{r.bin}]=l=Bank($brand="{b.brand}", $typ="{b.type}", $name="{b.name}", $country="{b.country}");')
            last = r

    print(FOOTER)


if __name__ == "__main__":
    main()
