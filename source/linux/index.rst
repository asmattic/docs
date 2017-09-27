Linux
=======

.. Variables
.. include:: ../vars.rst

.. |gdebi| replace:: GDebi
.. _gdebi: https://itsfoss.com/gdebi-default-ubuntu-software-center/

.. _linux-installing-deb-packages-sec:

Installing ``.deb`` files
--------------------------

There is a |cli|_ called |gdebi|_ that is much more light weight than the traditional Ubuntu Software Center.

.. code-block:: bash

   $ sudo apt-get install gdebi

After installing just right click on a ``.deb`` file and go to properties to make |gdebi|_ the default installer.