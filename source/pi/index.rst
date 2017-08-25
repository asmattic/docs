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

    * `/etc/hosts`
    * `/etc/hostname`
    * `/etc/init.d/hostname.sh`
    * `/etc/hostapd/hostapd.conf`
    * `/boot/hostnames`

Edit `/etc/hosts`

.. code-block:: bash
    
    # Change this line
    127.0.1.1 raspberrypi

    # To this line
    127.0.1.1 <newhostname>
