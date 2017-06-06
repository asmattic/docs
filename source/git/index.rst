All things Git
===============

.. Variables
.. include:: ../vars.rst

.. _git-basics-sec:

Git Basics
-----------

Enough to get started with.

.. code-block:: bash

	$ git add --all

	$ git add .

	$ git commit -m "Your message"

	# Commit to branch
	$ git push origin <your-branch>

	# Don't do this unless ready to merge
	$ git push origin master

	# Creating a new branch and switching into it
	$ git checkout -b <new-branch>

	# Merging and pulling
	$ git fetch --all
	$ git fetch --hard origin/<your-branch>

When you need to combine changes made somewhere else with your current branch.

``$ git pull origin other-branch``

Git is basically doing this

``$ git fetch origin other-branch && git merge other-branch``


.. _git-tips-tricks-sec:

Git tips and tricks
---------------------

To display the current branch in the terminal follow the steps in `this Howchoo atricle <howchooGitTerminal_>`_.

.. _howchooGitTerminal: https://howchoo.com/g/n2jhnmvjzta/how-to-display-the-current-git-branch-on-the-command-prompt
