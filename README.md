# firestore-emulator

A Docker image running the Firestore Emulator.

## Getting Started

These instructions will get you an instance of the firestore-emulator running on your
local machine for testing purposes.

### Prerequisites

Minimal requirements to set up the project:

- [Docker](https://docs.docker.com/install/)

### Running

```bash
docker run -d --name firestore-emulator --network localhost -e PORT=4500 -p 4500:4500 ridedott/firestore-emulator:latest 
```

## Contributing

See [CONTRIBUTING.md](./CONTRIBUTING.md).

## Built with

### Runtime libraries

- [Ramda](https://github.com/ramda/ramda)

### Source

### Development

### Automation

- [GitHub Actions](https://github.com/features/actions)

### Delivery

## Versioning

This project adheres to [Semantic Versioning](http://semver.org) v2.

