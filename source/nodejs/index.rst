Node JS
=========

.. Variables
.. include:: ../vars.rst

.. _nodejs-section:

Node JS
--------

Some resources.

* `Node JS <nodejsSite_>`_- The main node js website
* `Node Version Manager <nvm_>`_ - Manages node versions locally and globally

.. _nodejsSite: https://nodejs.org/en/
.. _nvm: https://github.com/creationix/nvm/blob/master/README.md

.. _nvm_sec:

Node Version Manager
---------------------

Listing
~~~~~~~~~

.. code-block:: bash

	# List installed node versions
	$ nvm ls

If you want to see what versions are available to install:

.. code-block:: bash

	# List installed node versions
	$ nvm ls-remote

.. _npm-section:

Node Package Manager (``npm``)
-------------------------------

Update ``npm``

.. code-block:: bash

    $ npm i -g npm

Checking for outdated packages, the latest versions and the minimum required versions.

.. code-block:: bash

    $ npm outdated [-g]

Updating a specific package.

.. code-block:: bash

    $ npm update [-g] <package>

List all installed packages and their dependencies in a tree structure.

.. code-block:: bash

    $ npm ls

Removing a package

.. code-block:: bash

    $ npm remove [-g] <package>   

.. _socket-io-section:

Socket
----------

.. note::
	Make sure you start the socket on the server and not the app itself with express

* `Socket IO docs <socketIoDocs_>`_ - Official |docs|

.. literalinclude:: socket-io.js

.. _socketIoDocs: https://socket.io/docs
