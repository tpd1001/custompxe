# Custom iPXE config to support booting from non-Native VLAN

<https://bootsha.medium.com/how-to-pxe-boot-a-server-using-tagged-vlan-9d822adb8104>

## Environment

Set environment variables according to your needs before building.

```bash
export VLAN=9
export IPXE_IFACE=0
```

## Build

```bash
time docker build -q -t custompxe -f Dockerfile .
docker create --name custompxe custompxe --entrypoint /
docker cp custompxe:/ipxe/src/bin-x86_64-efi/ipxe.efi ipxe_vlan.efi
```

## Files

I think thes are the files built:

```bash
bin/ipxe.lkrn
bin-x86_64-pcbios/undionly.kpxe
```

