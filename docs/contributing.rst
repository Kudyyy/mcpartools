.. highlight:: shell

============
Contributing
============

Contributions are welcome, and they are greatly appreciated!
Every little bit helps, and credit will always be given.

You can contribute in many ways:

Types of Contributions
----------------------

Report Bugs
~~~~~~~~~~~

Report bugs at https://github.com/DataMedSci/mcpartools/issues.

If you are reporting a bug, please include:

* Your operating system name and version.
* Any details about your local setup that might be helpful in troubleshooting.
* Detailed steps to reproduce the bug.

Fix Bugs or Implement Features
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Look through the GitHub issues for bugs or features.
Anything tagged with "bug" or "feature" is open to whoever wants to implement it.


Write Documentation
~~~~~~~~~~~~~~~~~~~

`mcpartools` could always use more documentation, whether as part of the
official `mcpartools` docs, in docstrings, or even on the web in blog posts,
articles, and such.

Submit Feedback
~~~~~~~~~~~~~~~

The best way to send feedback is to file an issue at https://github.com/DataMedSci/mcpartools/issues.

If you are proposing a feature:

* Explain in detail how it would work.
* Keep the scope as narrow as possible, to make it easier to implement.
* Remember that this is a volunteer-driven project, and that contributions
  are welcome :)

Get Started for GIT-aware developers
------------------------------------

Ready to contribute? Here's how to set up `mcpartools` for local development.
We assume you are familiar with GIT source control system. If not you will
other instruction at the end of this page.

1. Fork the `mcpartools` repo on GitHub.
2. Clone your fork locally::

    $ git clone git@github.com:your_name_here/mcpartools.git

3. If you are not familiar with GIT, proceed to step 5, otherwise create a branch for local development::

    $ cd mcpartools
    $ git checkout -b feature/issue_number-name_of_your_bugfix_or_feature

4. Now you can make your changes locally.

As the software is prepared to be shipped as pip package, some modifications
of PYTHONPATH variables are needed to run the code. Let us assume you are now in the same directory as ``setup.py`` file.


The standard way to execute Python scripts WILL NOT WORK::

   $ python mcpartools/generatemc.py --version
   Traceback (most recent call last):
     File "mcpartools/generatemc.py", line 5, in <module>
       from mcpartools.generator import Generator
   ImportError: No module named mcpartools.generator

To have the code working, two things are needed:

* installation of ``versioneer`` package (needed to set proper version number)
* adjustment of PYTHONPATH variable.

First let us install ``versioneer`` package and generate necessary files::

   $ pip install versioneer
   $ versioneer install

Now code can be run by typing::

   $ PYTHONPATH=. python mcpartools/generatemc.py --version
   0.1.3.post.dev2

5. Make local changes to fix the bug or to implement a feature.

6. When you're done making changes, check that your changes comply with PEP8 code quality standars (flake8 tests) and test against other Python versions with tox::

    $ flake8 mcpartools tests
    $ tox

   To get flake8 and tox, just pip install them.

7. Commit your changes and push your branch to GitHub::

    $ git add .
    $ git commit -m "Your detailed description of your changes."

8. Repeat points 4-6 until the work is done. Now its time to push the changes to remote repository::

    $ git push origin feature/issue_number-name_of_your_bugfix_or_feature

9. Submit a pull request through the GitHub website to the master branch of ``git@github.com:DataMedSci/mcpartools.git`` repository.

10. Check the status of automatic tests ran by Travis system.

You can find them on the pull request webpage https://travis-ci.org/DataMedSci/mcpartools/pull_requests.
In case some of the tests fails, fix the problem. Then commit and push your changes (steps 5-8).


Pull Request Guidelines
-----------------------

Before you submit a pull request, check that it meets these guidelines:

1. The pull request should include tests.
2. If the pull request adds functionality, the docs should be updated. Put
   your new functionality into a function with a docstring, and add the
   feature to the list in README.rst.
3. The pull request should work for Python 2.7, 3.2, 3.4, 3.5 and 3.6. Check
   https://travis-ci.org/DataMedSci/mcpartools/pull_requests
   and make sure that the tests pass for all supported Python versions.


Get Started for non-GIT developers
----------------------------------

1. Fetch the code from remote GIT repository to your local directory::

    $ git clone git@github.com:DataMedSci/mcpartools.git

2. Follow steps 4-6 from the instruction for GIT-aware developers. Install versioneer::

   $ pip install versioneer
   $ versioneer install

To run code locally, prefix usual calls with ``PYTHONPATH=.``::

   $ PYTHONPATH=. python mcpartools/generatemc.py --version
   0.1.3.post.dev2

Make your changes and check that they comply with PEP8 code quality standards (flake8 tests) and test against other Python versions with tox::

    $ flake8 mcpartools tests
    $ tox

3. Compress your working directory and send it to us by email (see `authors <AUTHORS.rst>`__), describing your changes.


Tips
----

To run full tests type::

    $ tox

To run only a single test type::

   $ PYTHONPATH=. python tests/test_file_to_run.py

.. _`bugs`: https://github.com/DataMedSci/mcpartools/issues
.. _`features`: https://github.com/DataMedSci/mcpartools/issues