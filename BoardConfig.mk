# Platform
TARGET_BOARD_PLATFORM := sc8830

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := sc8830

# Kernel
TARGET_PREBUILT_KERNEL := device/samsung/grandprimeve3g/kernel
#TARGET_PREBUILT_RECOVERY_KERNEL :=device/samsung/grandprimeve3g/kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --dt device/samsung/grandprimeve3g/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

#Включает деодекс по умолчанию
#DISABLE_DEXPREOPT := true

# Compiler flags
TARGET_GLOBAL_CFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4 -mtune=cortex-a7 -DXPERIA_U
TARGET_GLOBAL_CPPFLAGS += -mfloat-abi=softfp -mfpu=neon-vfpv4 -mtune=cortex-a7
#COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DQCOM_BSP -DQCOM_MEDIA_DISABLE_BUFFER_SIZE_CHECK #-DMSM_BSP
#TW_TARGET_USES_QCOM_BSP := false
#TW_NEW_ION_HEAP := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_BOOTIMAGE_PARTITION_SIZE := 13997072
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 17000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1393699616
BOARD_CACHEIMAGE_PARTITION_SIZE := 11866400
BOARD_USERDATAIMAGE_PARTITION_SIZE := 131072

# Hardware rendering
#TARGET_BOARD_PLATFORM_GPU := ARM Mali-400
#USE_OPENGL_RENDERER := true
#BOARD_EGL_CFG := device/samsung/grandprimeve3g/egl.cfg
#BOARD_USE_MHEAP_SCREENSHOT := true
#BOARD_EGL_WORKAROUND_BUG_10194508 := true
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_SUPPRESS_EMMC_WIPE := true

# TWRP
HAVE_SELINUX := true
DEVICE_RESOLUTION := 540x960
TW_IGNORE_MAJOR_AXIS_0 := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := false
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INTERNAL_STORAGE_PATH := "/internal_sd"
TW_INTERNAL_STORAGE_MOUNT_POINT := "internal_sd"
#TW_THEME := portrait_mdpi
#TARGET_RECOVERY_FSTAB := device/samsung/grandprimeve3g/fstab.sc8830
#TW_EXCLUDE_ENCRYPTED_BACKUPS := false
#TW_NO_EXFAT : = true
#TW_DISABLE_TTF := true

#TW_EXTERNAL_STORAGE_PATH := "/external_sd"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# SELinux
#BOARD_SEPOLICY_DIRS += \
#    device/samsung/grandprimeve3g

#BOARD_SEPOLICY_UNION += \
#    file_contexts \
