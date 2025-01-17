spack-847f560-octopus15.1:
	@# after adding fixes to the octopus/package.py, there was no spack release yet.
	@# to test this version nevertheless, we use a particular hash here:
	docker build -f Dockerfile -t octopus-spack-oct15.1 --build-arg SPACK_VERSION=847f560 .

# Install octopus via spack. Using most recent spack version ("develop")
# and default Octopus version
spack-develop:
	docker build -f Dockerfile -t octopus-spack --build-arg SPACK_VERSION=develop .

# use particular released versions of spack
spack-latest:
	docker build -f Dockerfile --build-arg SPACK_VERSION=releases/latest \
	-t octopus-spack-latest .

spack-v0.21.2:  # March 2024
	docker build -f Dockerfile --build-arg SPACK_VERSION=v0.21.2 \
   -t octopus-spack-v0.21.2 .

spack-v0.20.3:  # October 2023
	docker build -f Dockerfile --build-arg SPACK_VERSION=v0.20.3 \
   -t octopus-spack-v0.20.3 .


spack-v0.19.2:
	docker build -f Dockerfile --build-arg SPACK_VERSION=v0.19.2 \
   -t octopus-spack-v0.19.2 .

spack-v0.18.1:
	@# this (older?) version of spack does not compile on Debian bookworm (12),
	@# so we keep using bullseye (11)
	docker build -f Dockerfile-bullseye --build-arg SPACK_VERSION=v0.18.1 \
   -t octopus-spack-v0.18.1 .

# latest version of spack but develop version of octopus.
# Good to test this separately, as the octopus/package.py file deals
# with this version differently from released octopus versions.
#
# For released octopus versions, we download a tar ball and do not need to run
# autoconfigure, but for the develop version from git we need to. This should
# all be done by the spack-autotools class, and that's what we want to check
# here.
spack-latest-octopusdev:
	docker build -f Dockerfile \
			--build-arg SPACK_VERSION=releases/latest \
			--build-arg OCTOPUS_VERSION=@develop \
			-t octopus-spack-latest-octopusdev .

run:
	docker run --rm -ti -v $PWD:/io octopus-spack 

.PHONY: octopus-spack-v0.18.1 run spack-v0.19.2 spack-latest spack-develop spack-latest-octopusdev
