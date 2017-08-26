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

    * `/etc/hosts <sec_etc_hosts_>`_
    * `/etc/hostname`
    * `/etc/init.d/hostname.sh`
    * `/etc/hostapd/hostapd.conf`
    * `/etc/machine-info <sec_etc_machine_info_>`_
    * `/boot/hostnames`
    * `/etc/machine-info`

.. _sec_etc_hosts:

Edit `/etc/hosts`
~~~~~~~~~~~~~~~~~~~

.. code-block:: bash
    
    # Change this line
    127.0.1.1 raspberrypi

    # To this line
    127.0.1.1 <newhostname>

.. _sec_etc_hostname:

Edit `/etc/hostname`
~~~~~~~~~~~~~~~~~~~

.. code-block:: bash
    
    # Just change the name

.. _sec_etc_machine_info:

Edit `/etc/machine_info`
~~~~~~~~~~~~~~~~~~~
.. TODO figure out best way to replicate github commit style

:red:`-     PRETTY_HOSTNAME=oldhostname`

:green:`+ PRETTY_HOSTNAME=newhostname`

.. code-block:: bash
    
    :red:`- PRETTY_HOSTNAME=oldhostname`
    :green:`+ PRETTY_HOSTNAME=newhostname`