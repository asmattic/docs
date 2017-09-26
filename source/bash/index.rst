Bash
==================

.. Variables
.. include:: ../vars.rst

Bash Tips
-----------

Close terminal
~~~~~~~~~~~~~~~~~

``Ctrl`` + ``Shift`` + ``w``

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

.. _bash-storage-sec:

Storage
---------

To list memory used by various drives and folders

.. code-block:: bash

	# list storage
	$ du -h

Clean up filesystem

.. code-block:: bash

	$ sudo apt-get clean

.. _bash-network-sec:

Network
--------

`nmap cheat sheet <nmapCheatSheet_>`_

.. _nmapCheatSheet: https://highon.coffee/blog/nmap-cheat-sheet/

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

Predictable Network Names
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is the naming system used when you see more complex names for interface devices than ``wlan0``

List ``PCI`` interfaces

``lspci``

Change Mac Address
~~~~~~~~~~~~~~~~~~~~~~

Bring card down

``ifconfig <interface> down``

Change the address to any octet

``ifconfig <interface> hw ether dd:dd:dd:dd:dd``

Bring it back up

``ifconfig <interface> up``

Restart Network
~~~~~~~~~~~~~~~~~

Using wlan0 as an example.

Turn off

``sudo ifdown wlan0``

Turn on

``sudo ifup wlan0``

Restart network manager entirely. Setting an interface to monitor mode will require this to get the wifi back up.

``sudo network-manager restart``

.. _bash-ubuntu-sec:

Ubuntu `(and other distros)`
-------------------------------

Check the version of distro

``lsb_release -a``

For `Ubuntu 17.04` the mouse speed doesn't respond to the normal settings interface `but here is the best fix <mouse_speed_ubuntu_>`_

.. _mouse_speed_ubuntu: https://askubuntu.com/questions/205676/how-to-change-mouse-speed-sensitivity

Install Wireshark
~~~~~~~~~~~~~~~~~~~

#. Update PPA to latest stable version

``sudo add-apt-repository ppa:wireshark-dev/stable``

#. Allow superuser to run Wireshark when it asks during installation.

#. Integrate new changes

``sudo apt-get update``

#. Install

``sudo apt-get install wireshark``

#. If you selected no initially and want to change it later, run

``sudo dpkg-reconfigure wireshark-common``

Bash Scripting
===============

Use the backtick ` \` ` character to output to a variable rather than the console

.. code-block:: bash

	var_one=`cat ls | grep .txt`

Installing an array of packages

.. code-block:: bash

	package_list=(
		package1
		packageN
	)

	# The @ destructures the array members
	sudo apt-get -y install ${package_list[@]}

Commands that depend on previous commands completing successfully

.. code-block:: bash

	# In terminal
	command1 && command2 && command3

	# In script
	# Backslash lets bash know these lines are one command
	command1 \
	&& command 2 \
	&& command 3

Run commands regardless of previous commands success or failure

.. code-block:: bash

	# In terminal
	command1; command2; command3

	# In script
	# Just put each on it's own line
	command1
	command2
	command3


Loops
-------

.. code-block:: bash

	some_arr=(
		"thing1"
		"thingN"
	)

	for i in "${some_arr[@]}"
	do
		echo $i
	done


Users
-------

Return user

.. code-block:: bash

	$ echo $(whoami)
