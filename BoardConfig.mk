#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from msm8998-common
include device/xiaomi/msm8998-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/chiron

# Kernel
TARGET_KERNEL_CONFIG := chiron_user_defconfig

# Assert
TARGET_OTA_ASSERT_DEVICE := chiron

# Audio
AUDIO_FEATURE_ELLIPTIC_ULTRASOUND_SUPPORT := true

# Recovery
TARGET_RECOVERY_UI_MARGIN_STATUSBAR := 50

# Display
TARGET_SCREEN_DENSITY := 440

# PaperROM Changes 添加更改部分 - 更新时间2021-04-03 下午22:39:42
# 编译系统默认语言 (否则定义默认为en-US)
PAPER_ROM_DEFAULT_LANGUAGES := zh-CN
# 编译系统的地区类型 (类型为CN (中国版), GLOBAL (全球版), DEMO (拍视频演示版). )
PAPER_ROM_BUILDSYSTEM_TYPE := CN
# 编译系统时包括的语言包 (否则使用ROM源码默认参数 languages_all)
PAPER_ROM_BUILDSYSTEM_LANGUAGES_LIST := languages_china
# 编译系统使用的定义参数 (否则使用vendor_xxxxx的默认定义)
PAPER_ROM_BUILDSYSTEM_MARK := vendor_paper_exthm
# 编译系统是否启用外置软件包程序 (比如MIUI相机, GAPPS谷歌服务)
PAPER_ROM_BUILDSYSTEM_OTHER_PACKAGES := false
# 编译系统的版本维护类型 (否则则为unofficial)
PAPER_ROM_BUILDSYSTEM_COMPILE_TYPE := UNOFFICIAL
# 构建系统默认的版本 (分为用户版, 开发版, 测试版, 调试版)
PAPER_ROM_BUILDSYSTEM_COMPILE_SYSTEM_TYPE := user
# 是否禁用用户空间的垃圾模块 (比如无用的温控模块)
PAPER_ROM_BLACKLIST_MAGISK_EXIT := true
# PaperROM Changes 结束更改部分 - 更新时间2021-04-03 下午22:39:42

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from proprietary files
include vendor/xiaomi/chiron/BoardConfigVendor.mk
