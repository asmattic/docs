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
