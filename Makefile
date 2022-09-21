# Install octopus via spack. Using most recent spack version ("develop")
spack-develop:
	docker build -f Dockerfile -t octopus-spack --build-arg SPACK_VERSION=develop  .

# use particular released versions of spack
spack-latest:
	docker build -f Dockerfile --build-arg SPACK_VERSION=releases/latest \
	-t octopus-spack-latest .

spack-v0.18.0:
	docker build -f Dockerfile --build-arg SPACK_VERSION=v0.18.0 \
   -t octopus-spack-v0.18.0 .

spack-v0.18.1:
	docker build -f Dockerfile --build-arg SPACK_VERSION=v0.18.1 \
   -t octopus-spack-v0.18.1 .


run:
	docker run --rm -ti -v $PWD:/io octopus-spack 

.PHONY: octopus-spack-v0.18.1 run spack-v0.18.0 spack-latest spack-develop
