Linux Filesystem
=================

.. Variables
.. include:: ../vars.rst

/etc
------

/etc/passwd
~~~~~~~~~~~~

File that lists all users with all information that pertains to them. Here is an example line.

.. TODO: Explain what each item is
.. code-block:: bash

	asmattic:x:1000:1000:asmattic,,,:/home/asmattic:/bin/bash

Pull out just the users from the file. This could be put into an array to find the non-sudo user inside of a bash script.

.. code-block:: bash

	$ awk -F':' '{ print $1}' /etc/passwd
