# firestore-emulator

A Docker image running the Firestore Emulator.

## Getting Started

These instructions will get you an instance of the firestore-emulator running on your
local machine for testing purposes.

### Prerequisites

Minimal requirements to set up the project:

- [Docker](https://docs.docker.com/install/)

### Building

```bash
docker build -t ridedott/firestore-emulator .
```

### Running

```bash
docker run -d --name firestore-emulator -e PORT=4500 -p 4500:4500 ridedott/firestore-emulator:latest 
```

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md).

## Built with

### Automation

- [GitHub Actions](https://github.com/features/actions)

## Versioning

This project adheres to [Semantic Versioning](http://semver.org) v2.

