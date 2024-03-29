All things Git
===============

.. Variables
.. include:: ../vars.rst

.. _git-basics-sec:

`Atlassian is great place to start to reference common Git senarios <https://www.atlassian.com/git/tutorials/using-branches/git-merge>`_

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

Here is the `main article from the GitHub help pages <gitBranchMergeConflicts_>`_

.. note::
	As a general strategy, it is best to merge the more important branches rather than the other way around so that the merge conflicts can be managed with less of a chance of messing up ``master`` or other stable branches.

The ``--no-ff`` creates a commit and timestamp of the merge, as well as who did it.

.. code-block:: bash

	# checkout less important branch
	$ git checkout <feature branch>

	# merge in the more important branch
	$ git merge --no-ff <branch>

	# if there are conflicts see where they are
	# see below on how to deal with the conflicts
	$ git status

	# Go into the files an
	# when ready to merge into stable
	$ git checkout <branch to delete>

	$ git push

	$ git checkout <stable branch>

	# delete obsolete branch
	$ git branch -d <obsolete branch>

If there are conflicts, you will see ``<<<<<<<<<HEAD`` or ``<<<<<<<<<<<<branch>`` followed by the code in one branch with ``==========`` separating the same code with changes in the other branch with ``>>>>>>>>><other_branch>`` at the end of the changes to look at. Manually edit how you want to merge them, remove the conflict delimiters and commit the completed merge.

.. _gitBranchMergeConflicts: https://help.github.com/articles/resolving-a-merge-conflict-using-the-command-line/
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

Resetting Branch to previous commit
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

	# Checkout the branch to revert
	$ git checkout master

	$ git reset --hard <commit>

	$ git push --force origin master

	# Then to prove it (it won't print any diff)
	$ git diff master ..origin/master

.. _git_forking_sec:

Forking
--------

Only ``fork`` if you intend on contributing to the code base.

Change Git Remotes
---------------------

There are a few reasons for needing to change remotes of a git repo. When referring to multiple ``remotes``, I mean ``fetch`` and ``push``

To list the current remotes
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

   $ git remote -v

   # Example output

   origin   git@github.com:asmattic/faqusoft-kb.git (fetch)
   origin   git@github.com:asmattic/faqusoft-kb.git (push)

**Changing the remotes between SSL and HTTPS or to changing the remotes completely require the same steps.**

You may want to have multiple sets of remotes if you are goth storing in Github and also are using git to deploy to a production environment like Heroku for example.

.. code-block:: bash

   # There can be multiple remotes
   $ git remote set-url <remote name> <new url to set remotes to>

   # The remote name is most commonly origin
   $ git remote set-url origin <new url to set remotes to>

   # SSL Example
   $ git remote set-url origin git@github.com:<userName>/<repoName>

   # HTTPS Example
   $ git remote set-url origin https://github.com/<userName>/<repoName>


.. _git_tips_tricks_sec:

Git tips and tricks
---------------------

To display the current branch in the terminal follow the steps in `this Howchoo atricle <howchooGitTerminal_>`_.

.. code-block:: bash

	function parse_git_branch () {
	  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
	}
	YELLOW="\[\033[0;33m\]"
	GREEN="\[\033[0;32m\]"
	NO_COLOR="\[\033[0m\]"
	PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "

.. _howchooGitTerminal: https://howchoo.com/g/n2jhnmvjzta/how-to-display-the-current-git-branch-on-the-command-prompt

.. _sec-git-ssh-shell:

Bash scripting with git
-------------------------

To have the right `ssh` context in `git` you have to feed it the correct place to look for the necessary keys.

Filename: `git-ssh.sh`

.. code-block:: bash

	#!/bin/sh
	ssh -i "$GIT_SSH_KEY" "$@"

Example using `git-ssh.sh` to use pull and push functions.

.. literalinclude:: git-shell-example.sh

Ignoring already tracked files and directories
------------------------------------------------

First add the file or folder to the `.gitignore` file.

After that is done they can be removed from the git index by adding the `--cached` flag to `git rm`.
.. code-block:: bash

	# Add -r for recursive removal
	$ git rm -r --cached <path-to-folder-or-file>

Git 2.0 Default Behavior with Pushing, Pulling and Merging
--------------------------------------------------------------

To squelch this message and adopt the new behavior now, use:

.. code-block:: bash

   $ git config --global push.default simple

.. note::
   When push.default is set to ``matching``, git will push local branches
   to the remote branches that already exist with the same name.

   Since Git 2.0, Git defaults to the more conservative 'simple'
   behavior, which only pushes the current branch to the corresponding
   remote branch that 'git pull' uses to update the current branch.

   See 'git help config' and search for 'push.default' for further information.
   (the 'simple' mode was introduced in Git 1.7.11. Use the similar mode
   'current' instead of 'simple' if you sometimes use older versions of Git)

