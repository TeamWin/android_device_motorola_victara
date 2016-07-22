TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := victara

BOARD_CUSTOM_BOOTIMG_MK := device/motorola/victara/mkbootimg.mk

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom androidboot.bootdevice=msm_sdcc.1 msm_rtb.filter=0x37 ehci-hcd.park=3 vmalloc=400M utags.blkdev=/dev/block/platform/msm_sdcc.1/by-name/utags

BOARD_KERNEL_BASE := 0x0000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x0000000 --ramdisk_offset 0x01000000 --second_offset 0x0f00000 --tags_offset 0x0000100 --dt device/motorola/victara/dtb

# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/motorola/victara/kernel
# else uncomment below to build from sauce
# TARGET_KERNEL_SOURCE := kernel/motorola/victara
# TARGET_KERNEL_CONFIG := omni_victara_defconfig
# apparently this dont work but should ;x
# TARGET_KERNEL_APPEND_DTB := true
# use this instead
# BOARD_KERNEL_IMAGE_NAME := zImage-dtb

BOARD_BOOTIMAGE_PARTITION_SIZE := 14485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10526720
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_HAS_NO_SELECT_BUTTON := true

TW_THEME := portrait_hdpi
TW_NO_USB_STORAGE := true
TW_INCLUDE_CRYPTO := true
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_SCREEN_BLANK_ON_BOOT := true
