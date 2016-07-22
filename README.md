## TWRP device tree for Moto X 2014 (victara)

Add to `.repo/local_manifests/victara.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/motorola/victara" name="android_device_motorola_victara" remote="TeamWin" revision="android-6.0" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_victara-eng
make -j5 recoveryimage
```

Kernel sources are available at: https://github.com/jcadduono/android_kernel_motorola_msm8974/tree/twrp-6.0

