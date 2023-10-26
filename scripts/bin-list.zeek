@load ./bank
module CreditCardExposure;

event zeek_init()
	{
	if ( CreditCardExposure::load_bin_list )
		{
		CreditCardExposure::bin_list[372685] = Bank($brand="AMERICAN EXPRESS", $typ="CREDIT", $name="AMERICAN EXPRESS", $country="IL");
		CreditCardExposure::bin_list[374580] = Bank($brand="AMERICAN EXPRESS", $typ="CREDIT", $name="HSBC", $country="IL");
		CreditCardExposure::bin_list[375510] = Bank($brand="AMERICAN EXPRESS", $typ="CREDIT", $name="BANK HAPOALIM", $country="IL");
		CreditCardExposure::bin_list[375511] = Bank($brand="AMERICAN EXPRESS", $typ="CREDIT", $name="BANK HAPOALIM", $country="IL");
		CreditCardExposure::bin_list[375512] = Bank($brand="AMERICAN EXPRESS", $typ="CREDIT", $name="BANK HAPOALIM", $country="IL");
		CreditCardExposure::bin_list[375513] = Bank($brand="AMERICAN EXPRESS", $typ="CREDIT", $name="BANK OF ISRAEL", $country="IL");
		CreditCardExposure::bin_list[375514] = Bank($brand="AMERICAN EXPRESS", $typ="CREDIT", $name="BANK OF ISRAEL", $country="IL");
		CreditCardExposure::bin_list[375515] = Bank($brand="AMERICAN EXPRESS", $typ="CREDIT", $name="", $country="IL");
		CreditCardExposure::bin_list[375516] = Bank($brand="AMERICAN EXPRESS", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[375517] = Bank($brand="AMERICAN EXPRESS", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[400159] = Bank($brand="VISA", $typ="CREDIT", $name="AMINIT, LTD.", $country="IL");
		CreditCardExposure::bin_list[405611] = Bank($brand="VISA", $typ="DEBIT", $name="INTERPAYMENT SERVICES, LTD.", $country="IL");
		CreditCardExposure::bin_list[406423] = Bank($brand="VISA", $typ="DEBIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[407516] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[407517] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[407518] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[410927] = Bank($brand="VISA", $typ="CREDIT", $name="HSBC BANK MIDDLE EAST", $country="IL");
		CreditCardExposure::bin_list[419265] = Bank($brand="VISA", $typ="DEBIT", $name="", $country="IL");
		CreditCardExposure::bin_list[419266] = Bank($brand="VISA", $typ="DEBIT", $name="", $country="IL");
		CreditCardExposure::bin_list[419267] = Bank($brand="VISA", $typ="DEBIT", $name="", $country="IL");
		CreditCardExposure::bin_list[419268] = Bank($brand="VISA", $typ="DEBIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[421909] = Bank($brand="VISA", $typ="DEBIT", $name="BANCO CITIBANK DE COSTA RICA, S.A.", $country="CR");
		CreditCardExposure::bin_list[421910] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[421911] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[421912] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[421913] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[421914] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[421915] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[428565] = Bank($brand="VISA", $typ="", $name="", $country="IL");
		CreditCardExposure::bin_list[428566] = Bank($brand="VISA", $typ="", $name="", $country="IL");
		CreditCardExposure::bin_list[428567] = Bank($brand="VISA", $typ="", $name="", $country="IL");
		CreditCardExposure::bin_list[428568] = Bank($brand="VISA", $typ="", $name="", $country="IL");
		CreditCardExposure::bin_list[431904] = Bank($brand="VISA", $typ="CREDIT", $name="FIA CARD SERVICES, N.A.", $country="US");
		CreditCardExposure::bin_list[431905] = Bank($brand="VISA", $typ="DEBIT", $name="AMINIT, LTD.", $country="IL");
		CreditCardExposure::bin_list[431906] = Bank($brand="VISA", $typ="CREDIT", $name="AMINIT, LTD.", $country="IL");
		CreditCardExposure::bin_list[431907] = Bank($brand="VISA", $typ="CREDIT", $name="AMINIT, LTD.", $country="IL");
		CreditCardExposure::bin_list[440303] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[455743] = Bank($brand="VISA", $typ="CREDIT", $name="BANK HAPOALIM B M", $country="IL");
		CreditCardExposure::bin_list[455744] = Bank($brand="VISA", $typ="CREDIT", $name="BANK HAPOALIM B M", $country="IL");
		CreditCardExposure::bin_list[458000] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458001] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458002] = Bank($brand="VISA", $typ="CREDIT", $name="ARAB ISRAEL BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458003] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458004] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458005] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458006] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458007] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458008] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458009] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458010] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458011] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458012] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458013] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458014] = Bank($brand="VISA", $typ="DEBIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458015] = Bank($brand="VISA", $typ="DEBIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458016] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458017] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458018] = Bank($brand="VISA", $typ="DEBIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458019] = Bank($brand="VISA", $typ="DEBIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458020] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458021] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458022] = Bank($brand="VISA", $typ="CREDIT", $name="ARAB ISRAEL BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458023] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458024] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458025] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458026] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458027] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458028] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458029] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458030] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458031] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458032] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458033] = Bank($brand="VISA", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458034] = Bank($brand="VISA", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458035] = Bank($brand="VISA", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458036] = Bank($brand="VISA", $typ="CREDIT", $name="FIRST INTERNATIONAL BANK OF ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[458037] = Bank($brand="VISA", $typ="CREDIT", $name="FIRST INTERNATIONAL BANK OF ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[458038] = Bank($brand="VISA", $typ="CREDIT", $name="FIRST INTERNATIONAL BANK OF ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[458039] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458041] = Bank($brand="VISA", $typ="DEBIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458042] = Bank($brand="VISA", $typ="DEBIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458043] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458044] = Bank($brand="VISA", $typ="CREDIT", $name="LEUMI CARD", $country="IL");
		CreditCardExposure::bin_list[458045] = Bank($brand="VISA", $typ="CREDIT", $name="LEUMI CARD", $country="IL");
		CreditCardExposure::bin_list[458047] = Bank($brand="VISA", $typ="CREDIT", $name="LEUMI CARD", $country="IL");
		CreditCardExposure::bin_list[458048] = Bank($brand="VISA", $typ="CREDIT", $name="LEUMI CARD", $country="IL");
		CreditCardExposure::bin_list[458049] = Bank($brand="VISA", $typ="CREDIT", $name="LEUMI CARD", $country="IL");
		CreditCardExposure::bin_list[458050] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458051] = Bank($brand="VISA", $typ="CREDIT", $name="LEUMI CARD", $country="IL");
		CreditCardExposure::bin_list[458052] = Bank($brand="VISA", $typ="CREDIT", $name="LEUMI CARD", $country="IL");
		CreditCardExposure::bin_list[458053] = Bank($brand="VISA", $typ="DEBIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458054] = Bank($brand="VISA", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458055] = Bank($brand="VISA", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458057] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458078] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458079] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458080] = Bank($brand="VISA", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458081] = Bank($brand="VISA", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458082] = Bank($brand="VISA", $typ="DEBIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458083] = Bank($brand="VISA", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458085] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458086] = Bank($brand="VISA", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458087] = Bank($brand="VISA", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458090] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458091] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458092] = Bank($brand="VISA", $typ="CREDIT", $name="ARAB ISRAEL BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[458093] = Bank($brand="VISA", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[458094] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458095] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458096] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458097] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458098] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[458099] = Bank($brand="VISA", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[459440] = Bank($brand="VISA", $typ="DEBIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[459523] = Bank($brand="VISA", $typ="DEBIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[480982] = Bank($brand="VISA", $typ="DEBIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[480983] = Bank($brand="VISA", $typ="DEBIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[480984] = Bank($brand="VISA", $typ="DEBIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[494055] = Bank($brand="VISA", $typ="CREDIT", $name="UNITED MIZRAHI BANK", $country="IL");
		CreditCardExposure::bin_list[494056] = Bank($brand="VISA", $typ="CREDIT", $name="UNITED MIZRAHI BANK", $country="IL");
		CreditCardExposure::bin_list[510046] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[510049] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="LEUMICARD, LTD.", $country="IL");
		CreditCardExposure::bin_list[518953] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="LEUMICARD, LTD.", $country="IL");
		CreditCardExposure::bin_list[518954] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[518955] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[518986] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[518987] = Bank($brand="MASTERCARD", $typ="", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[518989] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="ISRAEL DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[518991] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="ISRAEL DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[532610] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="EUROPAY (EUROCARD) ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[532611] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="EUROPAY (EUROCARD) ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[532612] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="EUROPAY (EUROCARD) ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[532613] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="EUROPAY (EUROCARD) ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[532614] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="EUROPAY (EUROCARD) ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[532615] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="EUROPAY (EUROCARD) ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[532616] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="EUROPAY (EUROCARD) ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[532617] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="EUROPAY (EUROCARD) ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[532618] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="EUROPAY (EUROCARD) ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[532619] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="EUROPAY (EUROCARD) ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[533212] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="MERCANTILE DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[536406] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[536407] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="ISRAEL DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[540124] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="EUROPAY (EUROCARD) ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[544075] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="EUROPAY (EUROCARD) ISRAEL, LTD.", $country="IL");
		CreditCardExposure::bin_list[545134] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="LEUMICARD, LTD.", $country="IL");
		CreditCardExposure::bin_list[545136] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[545138] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[547707] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[547714] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="ISRAEL DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[547718] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[549212] = Bank($brand="MASTERCARD", $typ="DEBIT", $name="", $country="IL");
		CreditCardExposure::bin_list[552176] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[552177] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="LEUMICARD, LTD.", $country="IL");
		CreditCardExposure::bin_list[552183] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="ISRAEL CREDIT CARDS, LTD.", $country="IL");
		CreditCardExposure::bin_list[552184] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="ISRAEL DISCOUNT BANK, LTD.", $country="IL");
		CreditCardExposure::bin_list[552517] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[555953] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="BANK LEUMI LE-ISRAEL B.M.", $country="IL");
		CreditCardExposure::bin_list[558331] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="LEUMICARD, LTD.", $country="IL");
		CreditCardExposure::bin_list[558449] = Bank($brand="MASTERCARD", $typ="CREDIT", $name="BANK OF PALESTINE, LTD.", $country="IL");

























		}
	}