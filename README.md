# ProvTranslator Interoperability Tests

[ProvTranslator](https://provenance.ecs.soton.ac.uk/validator/view/translator.html) interoperability test job.

[![Build Status](https://travis-ci.org/prov-suite/provtranslator-interop-job.svg)](https://travis-ci.org/prov-suite/provtranslator-interop-job)

The Travis CI test job:

* Gets [ProvPy](https://github.com/trungdong/prov) via 'pip' (most recent release).
* Configures interoperability test harness.
* Runs interoperability tests to validate ProvTranslator conversions. Conversions are validated using ProvPy's prov-compare script.

## Author

Developed by [The Software Sustainability Institute](http://www.software.ac.uk>) and the [Provenance Tool Suite](http://provenance.ecs.soton.ac.uk/) team at [Electronics and Computer Science](http://www.ecs.soton.ac.uk) at the [University of Southampton](http://www.soton.ac.uk).

For more information, see our [document repository](https://github.com/prov-suite/ssi-consultancy/).

## License

These tests are released under the MIT license.
