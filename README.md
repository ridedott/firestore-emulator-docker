# firestore-emulator

A Docker image running the Firestore Emulator.

## Getting Started

These instructions will get you an instance of the firestore-emulator running on your
local machine for testing purposes.

### Prerequisites

Minimal requirements to set up the project:

- [Docker](https://docs.docker.com/install/)
    - Make sure to
        [authenticate to Github Package registry](https://help.github.com/en/articles/configuring-docker-for-use-with-github-package-registry#authenticating-to-github-package-registry).
        
### Usage

```bash
docker pull docker.pkg.github.com/ridedott/firestore-emulator-docker/firestore-emulator:latest
docker run -d --name firestore-emulator -e PORT=4500 -p 4500:4500 ridedott/firestore-emulator:latest
```

### Building

```bash
VERSION = `cat ./VERSION`
docker build --build-arg CLOUD_FIRESTORE_EMULATOR_VERSION=$VERSION -t ridedott/firestore-emulator:latest .
```

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md).

## Built with

### Automation

- [GitHub Actions](https://github.com/features/actions)

## Versioning

This project adheres to [Semantic Versioning](http://semver.org) v2.

