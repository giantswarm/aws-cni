[![CircleCI](https://circleci.com/gh/giantswarm/aws-cni/tree/master.svg?style=svg)](https://circleci.com/gh/giantswarm/aws-cni/tree/master)
[![Docker Repository on Quay](https://quay.io/repository/giantswarm/aws-cni/status "Docker Repository on Quay")](https://quay.io/repository/giantswarm/aws-cni)
[![Docker Repository on Quay](https://quay.io/repository/giantswarm/aws-cni-init/status "Docker Repository on Quay")](https://quay.io/repository/giantswarm/aws-cni-init)

# Build automation for AWS CNI

This repository is used to have reproducible builds of Docker images based on

https://github.com/aws/amazon-vpc-cni-k8s

## Usage

To build a Docker image for a new release:

1. Create a branch.
2. Modify the `UPSTREAM_TAG` variable in the `.circleci/config.yml` file. Set it to the release tag of the [upstream repo](https://github.com/aws/amazon-vpc-cni-k8s/releases) which should be used. Push to your branch.
3. Create a pull request for your branch.
4. Check the `build` job in CI. As a result, there should be an image tagged with the commit SHA in the registry.
5. Merge the PR after reviews.
6. Tag a release. As a result, there should be a Docker image with the release tag in the registry.
