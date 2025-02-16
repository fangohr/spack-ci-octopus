Testing Octopus package in spack (`spack-ci-octopus`)
=====================================================

Support repository for packaging of the `OCTOPUS code <http://octopus-code.org>`__ package in
`Spack <http://spack.readthedocs.io>`__.

There are (at least two different) error types that can lead to a problem with compiling Octopus through spack:

1. changes to the octopus specific packaging instructions or newer versions of
octopus. In particular, this is the ``octopus/package.py`` file within spack. To
run tests before we suggest changes to this file, we have used the 
https://github.com/fangohr/octopus-in-spack repository.

2. changes to spack overall: changes in spack behaviour through new spack
releases, changes to third party libraries octopus depends on, changes due to
global reformatting of spack files, etc. This repository (at
https://github.com/fangohr/spack-ci-octopus) is meant to detect these changes
more easily.

How to install a recent version of Octopus with spack?
------------------------------------------------------

- Ocotpus version 15.1 with development brach of spack: 

  Spack
  develop version (git head), latest octopus release (that's Octopus 15.1 in
  January 2025)::

  
    # install spack into subdirectory `spack`:
    git clone -c feature.manyFiles=true  https://github.com/spack/spack.git

    # compile octopus within this spack instance (takes about 2 hours)
    spack/bin/spack install octopus@15.1+netcdf+parmetis+arpack+cgal+pfft+python+likwid+libyaml+elpa+nlopt
    
  CI for this: |spack-develop-octopus-stable| 

- Octopus version 15.1 from particular hash of spack (should be more robust but less up to date)::

    # install spack into subdirectory `spack`:
    git clone -c feature.manyFiles=true https://github.com/spack/spack.git

    cd spack
    # checkout particular version
    git clone 847f560

    # compile octopus
    spack/bin/spack install octopus@15.1+netcdf+parmetis+arpack+cgal+pfft+python+likwid+libyaml+elpa+nlopt

  CI for this: |spack-847f560-octopus15.1| 

How to use Octopus after installing it via spack?
-------------------------------------------------

Assuming we are in the root directory of the cloned `spack` repository::

    . share/spack/setup-env.sh

    # now `spack` is in the PATH

    spack load octopus  

    # now `octopus` is in the PATH

    octopus --version


Status
------

The following targets clone spack, and attempt to install octopus through spack.
The instructions are embedded in `this Dockerfile <Dockerfile>`__.

They following targets all use the default version of octopus (i.e. what spack
would install if we run ``spack install octopus``).

We try different versions of spack (typically the last update for every minor
release). Each version of spack has one "recommended" version of Octopus
(typically the most recent Octopus release at the time of the spack release):

- |spack-v0.18.1-octopus-stable| Spack release 0.18.1, Octopus 11.4
- |spack-v0.19.2-octopus-stable| Spack release 0.19.2, Octopus 12.1
- |spack-v0.20.3-octopus-stable| Spack release 0.20.3, Octopus 12.2
- |spack-v0.21.2-octopus-stable| Spack release 0.21.2, Octopus 13.0
- |spack-847f560-octopus15.1| Spack version 847f560, Octopus 15.1
- |spack-develop-octopus-stable| Spack develop version (git head), latest octopus release (that's Octopus 15.1 on 27 January 2025)
- |spack-latest-octopusdev| Spack latest release, Octopus develop (git head)
- |spack-latest-octopus-stable| Spack latest release, with recommended Octopus version





.. |spack-latest-octopus-stable| image:: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-latest.yml/badge.svg
   :target: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-latest.yml

.. |spack-847f560-octopus15.1| image:: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-847f560-octopus15.1.yml/badge.svg
   :target: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-847f560-octopus15.1.yml

.. |spack-v0.21.2-octopus-stable| image:: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-v0.21.2.yml/badge.svg
   :target: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-v0.21.2.yml

.. |spack-v0.20.3-octopus-stable| image:: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-v0.20.3.yml/badge.svg
   :target: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-v0.20.3.yml

.. |spack-v0.19.2-octopus-stable| image:: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-v0.19.2.yml/badge.svg
   :target: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-v0.19.2.yml

.. |spack-v0.18.1-octopus-stable| image:: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-v0.18.1.yml/badge.svg
   :target: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-v0.18.1.yml

.. |spack-develop-octopus-stable| image:: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-develop.yml/badge.svg
   :target: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-develop.yml

.. |spack-latest-octopusdev| image:: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-latest-octopusdev.yml/badge.svg
   :target: https://github.com/fangohr/spack-ci-octopus/actions/workflows/spack-latest-octopusdev.yml 
