# aarch64-uefi-llbm_helloworld

## What is this?

UEFI HelloWorld application with clang + lld + gnu-efi(header only).

## requirements

* qemu-system-aarch64
* clang
* lld-link

## setup


```
$ ./setup.sh
```

This script creates ` $HOME/opt/llvm/aarch64-none-eabi ` and install gnu-efi headers to it.

## how to build

```
$ cd uefi/
$ make
$ ./run_qemu_aarch64.sh
```


## LICENSE

MIT License
