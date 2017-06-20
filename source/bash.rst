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
	
	# Add -R to modify recursively
	$ sudo chmod u=rwx,g=rx,o=r <myfile>

.. csv-table:: Chmod digits
	:header: "Digit", "Permission"

	4, "read"
	2, "write"
	1, "execute"
	0, "no permission"