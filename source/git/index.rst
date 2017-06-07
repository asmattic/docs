All things Git
===============

.. Variables
.. include:: ../vars.rst

.. _git-basics-sec:

Git Basics
-----------

Enough to get started with.

.. code-block:: bash

	# Check status of project
	$ git status

	# Adds all newly added files and directories
	$ git add --all

	# Adds all individual code changes in existing files and directories
	$ git add .

	# Commits changes to local .git folder
	$ git commit -m "Your message"

	# Commits to remote branch (usually master)
	$ git push origin <your-branch>

	# Don't do this on a non-master branch unless ready to merge
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
