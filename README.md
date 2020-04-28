# tpm-emulator

Provides the TPM 1.2 and TPM 2.0 tool software stack with the command
line tools along with the TPM 1.2 emulator.

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
