Guidelines for JavaScript Projects
==================================

Described here are best practices for structuring a JavaScript project within
Kids First.

Version
-------

Any Node.js releases former than 8.0.0 are becoming increasingly deprecated,
only Node.js 8.0.0 and later should be used for Kids First projects.
For the release and maintenance schedule, see `here <https://github.com/nodejs/Release>`_.

Transpile
---------

`V8 <https://v8.dev/>`_ is a widely used JavaScript engine but an assumption
every end-user consumes Kids First products on this particular version should
not be made.
This guide assumes `Babel <https://babeljs.io/>`_ is used for transpiling
source code, and requires
`@babel/preset-env <https://github.com/babel/babel/tree/master/packages/babel-preset-env>`_
or the equivalent toward that end.

Code Standards
--------------

ECMAScript 5 is becoming deprecated and ECMAScript 6+ (ES 2015+) should be
used.
Use `Airbnb JavaScript Style Guide <https://github.com/airbnb/javascript>`_
for styling and code.
Most repositories will check for conformance using a
`linter <https://www.npmjs.com/package/eslint-config-airbnb>`_ as part of the CI checks.

Package Management
------------------

Kids First uses either `npm` or `yarn` for reliable and secure dependency
management of its JavaScript projects.
All projects should include a `package.json` file for easy installation.
`package-lock.json` also needs to be included to facilitate greater visibility
of tree changes through readable source control differences.

Testing
-------

Kids First requires unit testing to validate that each component of software
performs as designed.
Any unit testing framworks such as
`mocha <https://www.npmjs.com/package/mocha>`_ or the equivalent should run
tests stored in an appropriate directory.
