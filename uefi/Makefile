CC=clang
LD=lld-link

LLVM_TARGET=-target aarch64-pc-win32-coff
SYSROOT=$(HOME)/opt/llvm/aarch64-none-eabi
EFI_INCLUDE=$(SYSROOT)/include/efi/

CFLAGS=$(LLVM_TARGET)
CFLAGS+=-fno-stack-protector -fshort-wchar 
CFLAGS+=-mno-red-zone 
CFLAGS+=-nostdlibinc 
CFLAGS+=-Wall -Wpedantic 
CFLAGS+=--sysroot=$(SYSROOT)
CFLAGS+=-I. -I$(EFI_INCLUDE) -I$(EFI_INCLUDE)/aarch64 -I$(EFI_INCLUDE)/protocol

LDFLAGS=-subsystem:efi_application -nodefaultlib -dll
LDFLAGS+=-entry:efi_main

all: main.efi

.o.c: 
	$(CC) $(CFLAGS) -c $< -o $@

main.efi: main.o
	$(LD) $(LDFLAGS) $^ -out:$@
