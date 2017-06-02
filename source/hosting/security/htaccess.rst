`.htaccess`
============

.. Variables
.. include:: ../../vars.rst

Password Protect Website Sections
-----------------------------------

`Password protect specific areas of a site <htaccessPasswordProtect_>`_ from a single file to a subdomain to a full domain.

.. code-block:: text

	AuthUserFile /.htpasswds/.htpasswd
	AuthGroupFile /dev/null
	AuthName ExampleTextEnterPassword
	AuthType Basic

	require user exampleUser

.. _htaccessPasswordProtect: http://www.javascriptkit.com/howto/htaccess3.shtml
