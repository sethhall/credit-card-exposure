Credit Card Exposure
====================

Detect credit card numbers in HTTP and SMTP with Bro.  This script only works with Bro 2.4+.

Installation
------------

Bro Package Manager
*******************

::

	bro-pkg refresh
	bro-pkg install sethhall/credit-card-exposure

Alternate Manual Installation
*****************************

::

	cd <prefix>/share/bro/site/
	git clone git://github.com/sethhall/credit-card-exposure.git
	echo "@load credit-card-exposure/scripts/" >> local.bro

After the credit-card-exposure module is loaded, follow the configuration 
examples below.

Configuration
-------------

The only interesting configuration available for users is for log
redaction.  The default is conservative to avoid creating more sensitive data
so notices and logs are redacted by default.  If you would like to change this
setting, you can add the following line to your local site configuration script
after loading the module::

	redef CreditCardExposure::redact_log = F;
