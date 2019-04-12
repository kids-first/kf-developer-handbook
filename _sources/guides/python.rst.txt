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

Use `pep-8 <https://www.python.org/dev/peps/pep-0008/#tabs-or-spaces>`_ for
styling code. Most repositories will check for conformance using a linter as
part of the CI checks.

Package Management
------------------

Kids First uses `virtual environment` in conjunction with `pip`. All projects
should include at least a `requirements.txt` file for easy installation with
`pip`. Optional requirements may be stored in another prefixed file such as
`dev-requirements.txt` or `test-requirements.txt`.

Testing
-------

Kids First uses `pytest <https://docs.pytest.org/en/latest/>`_ exclusively for
running tests.

Test should be stored in the `tests` directory at the top level of the project.
