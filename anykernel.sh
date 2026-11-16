### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
properties() { '
kernel.string=Scalar Kernel for android12-5.10 GKI devices by putraaxzy
do.devicecheck=0
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=
device.name2=
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install
BLOCK=boot;
IS_SLOT_DEVICE=auto;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

split_boot;

ui_print "- Kernel: $(strings "$AKHOME/Image" 2>/dev/null | grep -E -m1 'Linux version.*#' | awk '{print $3}')";
ui_print "- Root  : KernelSU-Next + SUSFS v2.3.0 (built-in)";

flash_boot;

ui_print " " "- Done. Install KernelSU-Next manager (dev-susfs build) after boot." " ";
