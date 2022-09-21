

Testing Octopus package in spack
=================================

.. sectnum::

.. contents:: 

Octopus-in-spack
================

Support repository for getting the `OCTOPUS code <http://octopus-code.org>`__ package into
`Spack <http://spack.readthedocs.io>`__.

In particular, this is meant to detect if the spack repository breaks.

For changes of the `octopus/package.py` file within spack, please see [this
repository](https://github.com/fangohr/octopus-in-spack/).


Status
------

The following targets clone spack, and attempt to install octopus through spack.

They use the default version of octopus.

We try different versions of spack:

- |spack-develop-octopus-stable| Spack develop version (git head)
- |spack-latest-octopus-stable| Spack latest release
- |spack-v0.18.0-octopus-stable| Spack release 0.18.0,
- |spack-v0.17.2-octopus-stable| Spack release 0.17.2

.. |spack-latest-octopus-stable| image:: https://github.com/fangohr/octopus-in-spack/actions/workflows/spack-latest.yml/badge.svg
   :target: https://github.com/fangohr/octopus-in-spack/actions/workflows/spack-latest.yml
   
.. |spack-v0.18.0-octopus-stable| image:: https://github.com/fangohr/octopus-in-spack/actions/workflows/spack-v0.18.0.yml/badge.svg
   :target: https://github.com/fangohr/octopus-in-spack/actions/workflows/spack-v0.18.0.yml
.. |spack-v0.17.2-octopus-stable| image:: https://github.com/fangohr/octopus-in-spack/actions/workflows/spack-v0.17.2.yml/badge.svg
   :target: https://github.com/fangohr/octopus-in-spack/actions/workflows/spack-v0.17.2.yml

.. |debian-octopusstable| image:: https://github.com/fangohr/octopus-in-spack/actions/workflows/debian-octopusstable.yml/badge.svg
   :target: https://github.com/fangohr/octopus-in-spack/actions/workflows/debian-octopusstable.yml
.. |debian-octopusdevelop| image:: https://github.com/fangohr/octopus-in-spack/actions/workflows/debian-octopusdevelop.yml/badge.svg
   :target: https://github.com/fangohr/octopus-in-spack/actions/workflows/debian-develop.yml

.. |spack-develop-octopus-stable| image:: https://github.com/fangohr/octopus-in-spack/actions/workflows/spack-develop.yml/badge.svg?branch=spack-develop
   :target: https://github.com/fangohr/octopus-in-spack/actions/workflows/spack-develop.yml
