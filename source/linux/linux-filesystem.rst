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

Reading Permissions
-----------------------

Permissions are broken up into four groups. The first group is one character and the other three groups are each comprised of three characters. A dash (``-``) in any place other than the first (`type`) character means that the permission usually at that location is not in effect.

.. list-table::
   :header-rows: 0

   *  - Item Type
      - ``-`` (file)
      - ``d`` (directory)
      - ``l`` (link)

   *  -  Owner Permissions
      -  ``r`` (read)
      -  ``w`` (write)
      -  ``x`` (executable)

   *  -  Group Permissions
      -  ``r`` (read)
      -  ``w`` (write)
      -  ``x`` (executable)

   *  -  Any User Permissions
      -  ``r`` (read)
      -  ``w`` (write)
      -  ``x`` (executable)

   *  - ``0`` (none)
      - ``1`` (execute)
      - ``2`` (write)
      - ``4`` (read)

`Good Bash scripting reference  <https://tiswww.case.edu/php/chet/bash/bashref.html#Shell-Parameters>`_

# Check if program exists
# $0 is the function name
# $1 is the first arg
# 2>/dev/null redirects output to stderr instead of stdout
# > redirect standard output (implicit 1>)
# & what comes next is a file descriptor, not a file (only for right hand side of >)
# 2 stderr file descriptor number

.. list-table::
   :header-rows: 1

   *  - Special Parameter
      - Description
      - Common Use Case

   *  - `$0`
      - Function name of previously ran function
      - TBD

   *  - `$1`
      - First argument
      - TBD

   *  - `$?`
      - Expands to the exit status of the most recently executed foreground pipeline
      - TBD

   *  - `$@`
      - TBD
      - TBD

   *  - `$!`
      - TBD
      - TBD
   *  - `2>/dev/null`
      - Redirects output to stderr instead of stdout
      - TBD

   *  - `1`
      - `stdout` file descriptor number
      - TBD

   *  - `2`
      - `stderr` file descriptor number
      - TBD

   *  - `>` (implicit `1>`)
      - Redirect standard output
      - TBD

Order of output redirections
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Note that the order of redirections is significant. For example, the command

.. code-block:: bash

   ls > dirlist 2>&1

directs both standard output (file descriptor 1) and standard error (file descriptor 2) to the file dirlist, while the command

ls 2>&1 > dirlist
directs only the standard output to file dirlist, because the standard error was made a copy of the standard output before the standard output was redirected to dirlist.

Open files from terminal
---------------------------

To open a file in the default browser.

.. code-block:: bash

   $ xdg-open /path/to/index.html

Using /proc
--------------

.. note::
   The ``/proc`` directory is actually a pseudo-filesystem. The files in ``/proc`` mirror currently running system and kernel processes and contain information and statistics about them. (`source: fibrevillage.com <http://fibrevillage.com/scripting/604-how-to-use-proc-in-bash>`_)

Common Issues
------------------

The `/boot` folder is out of space. This is usually the cause of a build up of kernal backups. To free up some space, just run `sudo apt autoremove` and the older, no longer necessary files will be removed.

 - `Stack Overflow question used for explanation <https://askubuntu.com/questions/785460/boot-partition-filling-up-is-this-a-bug-in-ubuntu?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa>`_

.. code-block:: bash

   sudo apt autoremove
