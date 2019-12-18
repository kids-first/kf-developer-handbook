Guidelines for Python Projects
==============================

Described here are best practices for structuring a python project within Kids
First.

Version
-------

Python 2 is becoming increasingly deprecated, only Python 3.6 and later should
be used for Kids First projects.

Code Standards
--------------

`Pep-8 <https://www.python.org/dev/peps/pep-0008/#tabs-or-spaces>`_ should be
followed for code formatting at a minimum.
The `black <https://github.com/psf/black>`_ formatter should be used for any
new repositories and its use is suggested for formatting any new changes or
additions to repositories that do not yet have project-wide conformance with
black.
Most repositories will and should check for formatting using
`pycodestyle <https://pypi.org/project/pycodestyle/>`_ as part of the CI checks.

Package Management
------------------

Kids First uses `virtual environment` in conjunction with `pip`. All projects
should include at least a `requirements.txt` file for easy installation with
`pip`. Optional requirements may be stored in another prefixed file such as
`dev-requirements.txt` or `test-requirements.txt`.

Testing
-------

Kids First uses `pytest <https://docs.pytest.org/en/latest/>`_ exclusively for
running tests. Test should be stored in the `tests` directory at the top level
of the project.

Test coverage can be integrated into each GitHub repos with `Codecov.io <https://docs.codecov.io/docs/python>`_
by installing `pytest-cov <https://pypi.org/project/pytest-cov/>`_  and
`codecov <https://github.com/codecov/example-python/>`_ for Python projects.
