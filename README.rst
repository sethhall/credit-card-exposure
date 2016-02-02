Credit Card Exposure
====================

Detect credit card numbers in HTTP and SMTP with Bro.  This script only works with Bro 2.4.

Installation
------------

::

	cd <prefix>/share/bro/site/
	git clone git://github.com/sethhall/credit-card-exposure.git
	echo "@load credit-card-exposure" >> local.bro

After the credit-card-exposure module is loaded, follow the configuration 
examples below.  One or both of the following options must be done or the script
won't do anything.  

Configuration
-------------

The only interesting configuration available for users is the for log
redaction.  The default is conservative to avoid creating more sensitive data
so notices and logs are redacted by default.  If you would like to change this
setting, you can add the follwing line to your local site configuration script
after loading the module::

	redef CreditCardExposure::redact_log = F;
