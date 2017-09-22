Electron
=========

.. Variables
.. include:: ../vars.rst

Basic App Usage
-----------------

Some tips on how to make the app feel more native.

To make text not selectable apply css to inputs

.. code-block:: css
	
	.my-ui-text {
		-webkit-user-select: none;
	}

Deploying
-----------

Many of the deployment tips and code snippets below are taken from the following list of articles.

* `Tips for building cross platrofm electron apps <distro_tips_>`_

.. _distro_tips: https://blog.avocode.com/blog/4-must-know-tips-for-building-cross-platform-electron-apps

Before going into more detail on the differences on each distro, here is a summary of some of the most obvious things to account for in each.

.. csv-table::
	:header: "Item", "Linux (Ubuntu)", "Windows", "Mac OS"

	"Icon Type", "``.png``", "``.ico``", "``.icns``"

To create the ``.ico`` and ``.icns`` files from the original ``.png`` (use 1024 x 1024px) there are a few commands.

	#. For Windows, run it through ``icotools`` to get an ``.ico``:

		``icontool -c icon.png > icon.ico``

	#. For macOS, run it through ``png2icns`` to get an ``.icns``:

		``png2icns icon.icns icon.png``


Linux (Ubuntu)
~~~~~~~~~~~~~~~~

.. code-block:: javascript

	mainWindow = new BrowserWindow({
		title: 'ElectronApp',
		icon: __dirname + '/app/assets/img/icon.png',
	};

Windows
~~~~~~~~

Mac
~~~~

Copy and paste is not turned on by default

.. literalinclude:: ./mac-copy-paste.js