# Interoperability Test Harness ProvTranslator Extension

[Southampton Provenance Tool Suite](https://provenance.ecs.soton.ac.uk) interoperability test harness ProvTranslator extension. This package consists of classes that extend the [interoperability test harness framework](https://github.com/prov-suite/interop-test-harness/tree/package) to allow interoperability testing of [ProvTranslator](https://provenance.ecs.soton.ac.uk/validator/view/translator.html).

The test harness runs under Python 2.7+ and Python 3.

[![Build Status](https://travis-ci.org/prov-suite/provtranslator-interop-job.svg)](https://travis-ci.org/prov-suite/provtranslator-interop-job)

---

## Installation

The instructions have been written with reference to the 64-bit [Ubuntu](http://www.ubuntu.com/) 14.04.2 operating system.

Other operating systems, or versions of these, may differ in how packages are installed, the versions of these packages available from package managers etc. Consult the relevant documentation for your operating system and the products concerned.

Some dependencies require you to have sudo access to install and configure software (or a local system administrator can do this for you).

This page assumes that [pyenv](https://github.com/yyuu/pyenv) is used to manage Python versions.

Install the interoperability test harness framework

* See [interoperability test harness framework](https://github.com/prov-suite/interop-test-harness/blob/package/README.md)

Install package

```
$ pip install -r requirements
$ python setup.py install
```

Run unit tests

```
$ nosetests prov_interop_provtranslator.tests
```

---

## Running ProvTranslator interoperability tests

Get the interoperability test cases

```
$ git clone https://github.com/prov-suite/testcases
```

Run interoperability tests:

```
$ nosetests -v prov_interop_provtranslator.interop_tests
```

If you are running on a multi-processor machine then the tests can run in parallel, using nosetests' support for [parallel testing](http://nose.readthedocs.org/en/latest/doc_tests/test_multiprocess/multiprocess.html). Specify the number of processes you want to use using a `--processes` flag e.g.

```
$ nosetests --processes=4 -v prov_interop_provtranslator.interop_tests
```

---

## Running ProvTranslator interoperability tests under Travis CI

[.travis.yml](./.travis.yml) provides an example Travis CI configuration file

---

## Changing the ProvTranslator URL

Either:

* Edit:

```
prov_interop_provtranslator/interop_tests/provtranslator.yaml
```

* Change the following to specify the URL you wish to use.

```
url: https://provenance.ecs.soton.ac.uk/validator/provapi/documents/
```

* Reinstall the package, as above.
* Run the interoperability tests, as above.

Or:

* Copy the interoperability test configuration file:

```
$ cp prov_interop_provtranslator/interop_tests/provtranslator.yaml myprovtranslator.yaml
```

* Edit `myprovtranslator.yaml` as above.
* Set an environment variable, `PROVTRANSLATOR_TEST_CONFIGURATION`, with the path to this file:

```
$ export PROVTRANSLATOR_TEST_CONFIGURATION=$PWD/myprovtranslator.yaml
```

* Reinstall the package, as above.
* Run the interoperability tests, as above.

---

## API documentation

To create API documentation in `apidocs/_build/html`:

```
$ pip install sphinx
$ make apidocs
```

---

## Author

Developed by [The Software Sustainability Institute](http://www.software.ac.uk>) and the [Provenance Tool Suite](http://provenance.ecs.soton.ac.uk/) team at [Electronics and Computer Science](http://www.ecs.soton.ac.uk) at the [University of Southampton](http://www.soton.ac.uk).

For more information, see our [document repository](https://github.com/prov-suite/ssi-consultancy/).

---

## License

The code is released under the MIT license.
