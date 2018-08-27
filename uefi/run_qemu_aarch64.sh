#!/bin/bash

qemu-system-aarch64 -m 512 -cpu cortex-a57 -M virt \
 -bios ../ovmf/ovmf_aarch64.bin \
 -hda fat:rw:. \
 -nographic
