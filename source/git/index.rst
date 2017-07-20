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

.. _git-branch-sec:

Branches
------------------

.. code-block:: bash
	
	# To list local branches
	git branch

	# To list remote and local branches
	git branch -a

Merging Branches
~~~~~~~~~~~~~~~~~~

Here is a great `Atlassian article on the multiple types of merging branches <gitBranchMerge_>`_.

.. note::
	As a general strategy, it is best to merge the more important branches rather than the other way around so that the merge conflicts can be managed with less of a chance of messing up ``master`` or other stable branches.

The ``--no-ff`` creates a commit and timestamp of the merge, as well as who did it.

.. code-block:: bash
	
	# checkout less important branch
	$ git checkout <feature branch>

	# merge in the more important branch
	$ git merge --no-ff <branch>

	# when ready to merge into stable
	$ git checkout <branch to delete>

	$ git push

	$ git checkout <stable branch>

	# delete obsolete branch
	$ git branch -d <obsolete branch>

.. _gitBranchMerge: https://www.atlassian.com/git/tutorials/git-merge

Deleting Branches
~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

	# delete remote branch
	$ git push origin --delete <branch_name>

	# delete local branch
	$ git branch -d <branch_name>

	# more foceful delete
	$ git branch -D <branch_name>

.. _git-tips-tricks-sec:

Git tips and tricks
---------------------

To display the current branch in the terminal follow the steps in `this Howchoo atricle <howchooGitTerminal_>`_.

.. _howchooGitTerminal: https://howchoo.com/g/n2jhnmvjzta/how-to-display-the-current-git-branch-on-the-command-prompt
