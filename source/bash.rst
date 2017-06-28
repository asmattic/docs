Bash
==================

.. Variables
.. include:: vars.rst

Bash Tips
--------------------------

Some bash commands.

.. code-block:: bash

	# Printing out computer hardware to .html file
	$ sudo lshw -html

	# Print PCI hardware
	$ lspci -nn

	# USB hardware
	$ lsusb

	# Turn off wifi Power management
	$ sudo iwconfig <interface name (e.g. wlan0)> power off

	# List modules
	$ lsmod

	# Kill radio signals ( check on this)
	$ rfkill

	# List channels available for device
	$ iwlist chan

	# Scan channels
	$ iwlist scan

File/Folder Permissions
-------------------------------

Permissions for files and folders are grouped in three different sections; `user`, `group` and `other`. To set permissions for each, use the ``chmod`` or \"change mode\" command.

.. code-block:: bash
	
	# add -R to modify recursively
	$ sudo chmod u=rwx,g=rx,o=r <myfile>

.. csv-table:: Chmod digits
	:header: "Digit", "Permission"

	4, "read"
	2, "write"
	1, "execute"
	0, "no permission"

.. _bash-compression-sec:

Compression
-------------

Tar `(Tape Archiver)`
~~~~~~~~~~~~~~~~~~~~~~~

.. csv-table:: Compression Options
	:header: "Option", "Description"

	"``-c``", "Create archive"
	"``-z``", "Gzip archive"
	"``-v``", "Display progress (verbose)"
	"``-f``", "Specify filename"
	"``--exclude``", "Specify files, folders or patterns to not extract"
	"``-x``", "Extract archive"
	"``-C``", "Specify directory to extract to"

.. code-block:: bash
	
	# zip 
	$ tar -czvf <archive-to-create.tar.gz> <folder-to-compress> --exclude="*.pdf"

	# unzip
	$ tar -xzvf <file-to-extract.tar.gz> -C <folder-to-extract-to>

Count Output
--------------

To count various things in a file or output you can use ``wc``.

.. csv-table:: Compression Options
	:header: "Option", "Thing to count"

	"``-c``", "bytes"
	"``-m``", "chars"
	"``-l``", "lines"
	"``-w``", "words"

.. code-block:: bash
	
	# count lines of output
	$ <command-with-output> | wc -l

Network
--------

Setting up network ``ssid`` and ``psk`` can be done in the ``/etc/wpa_supplicant/wpa_supplicant.conf`` file.

You can also use ``sudo ifquery <interface>`` to find where the interface is getting it's configuration. Here is an example response.

.. code-block:: bash
	
	wpa-conf: /etc/wpa_supplicant/wpa_supplicant.conf


There are a lot of other options like setting priority of networks and naming that can be found `on the wiki here <wpaSupplicant_>`_.

.. _wpaSupplicant: https://wiki.archlinux.org/index.php/WPA_supplicant

.. code-block:: bash

	# Mandatory
	network={
		ssid="NETWORK_SSID"
		psk="PASSWORD"

	}


Restart Network
~~~~~~~~~~~~~~~~~

Using wlan0 as an example.

Turn off
``sudo ifdown wlan0``

Turn on
``sudo ifup wlan0``

