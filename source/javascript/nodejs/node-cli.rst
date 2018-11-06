Node JS CLI
==================

.. Variables
.. include:: ../../vars.rst

.. _nodejs-cli-sec:

While rolling your own CLI is certainly possible, the overwhelming concensus appears to be using the `Commander.js <https://www.npmjs.com/package/commander>`_ package with `0 dependencies` and nearly `12 million weekly downloads` as of April 2018.

.. note::
   If you set either an object or array of paths as values with command names as keys in the ``package.json`` ``bin`` property, typing in ``$ npm link`` in the ``package.json`` directory will link the commands so they can be used without running ``$ node <command>``.

Commander.js
----------------

.. list-table::
   :header-rows: 0

   * - NPM
     - `Commander.js <https://www.npmjs.com/package/commander>`_

   * - API Docs
     - `Commander API Docs <https://tj.github.io/commander.js/>`_
