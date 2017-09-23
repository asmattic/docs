Raspberry Pi Resources
========================

.. Variables
.. include:: ../vars.rst

For the Raspberry Pi
---------------------

Some resources.

* `Raspberry Pi <raspberryPiSite_>`_ - The main website of Raspberry Pi

.. _raspberryPiSite: https://www.raspberrypi.org/

* `Aircrack Ng Raspberry Pi <http://kamilslab.com/2016/01/11/how-to-install-aircrack-ng-suite-on-the-raspberry-pi>`_ - Install `aircrack-ng` suite on the raspberry pi.

Rename hostname
-----------------

All files to edit:

	* `/etc/hosts <etc_hosts_sec_>`_
	* `/etc/hostname`
	* `/etc/init.d/hostname.sh`
	* `/etc/hostapd/hostapd.conf`
	* `/etc/machine-info <etc_machine_info_sec_>`_
	* `/boot/hostnames`
	* `/etc/machine-info`

.. _etc_hosts_sec:

Edit `/etc/hosts`
~~~~~~~~~~~~~~~~~~~

.. code-block:: bash
    
	# Change this line
	127.0.1.1 raspberrypi

	# To this line
	127.0.1.1 <newhostname>

.. _etc_hostname_sec:

Edit `/etc/hostname`
~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash
    
	# Just change the name

.. _etc_machine_info_sec:

Edit `/etc/machine_info`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~
.. TODO figure out best way to replicate github commit style

:red:`-     PRETTY_HOSTNAME=oldhostname`

:green:`+ PRETTY_HOSTNAME=newhostname`

.. code-block:: bash
    
	:red:`- PRETTY_HOSTNAME=oldhostname`
	:green:`+ PRETTY_HOSTNAME=newhostname`