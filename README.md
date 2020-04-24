# tpm-emulator

Provides the TPM 1.2 and TPM 2.0 tool software stack with the command
line tools along with the TPM 1.2 emulator.

The TPM 1.2 emulator is running on startup. To override the default
behavior and start the emulator manually, specify a different
entrypoint in the `docker run` command, i.e.

```bash
docker run -it --entrypoint /bin/bash starlabio/tpm-emulator
```

## Running the TPM 1.2 emulator manually

```bash
tpmd
tcsd -e
```

## Docker container availability

```bash
docker pull starlabio/tpm-emulator
docker run -it starlabio/tpm-emulator
```
