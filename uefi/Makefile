CC=clang
LD=ld.lld

LLVM_TARGET=-target aarch64-pc-win32-coff
SYSROOT=$(HOME)/opt/llvm/aarch64-none-eabi
EFI_INCLUDE=/usr/include/efi/

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
	clang -target aarch64-pc-win32-coff -Wl,-subsystem:efi_application -Wl,-entry:efi_main -nodefaultlibs -nostdlib -fuse-ld=lld-link $^ -o $@

clean:
	rm -rf *.o main.efi
