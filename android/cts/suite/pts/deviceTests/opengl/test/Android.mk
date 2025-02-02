#
# Copyright (C) 2013 The Android Open Source Project
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

# build only for linux
ifeq ($(HOST_OS),linux)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := $(patsubst ./%,%, $(shell cd $(LOCAL_PATH); \
  find . -name "*.cpp" -and -not -name ".*"))
LOCAL_SRC_FILES += ../jni/graphics/Matrix.cpp

#$(info $(LOCAL_SRC_FILES))
LOCAL_C_INCLUDES += external/gtest/include $(LOCAL_PATH)/../jni/graphics/
LOCAL_STATIC_LIBRARIES := libutils libcutils libgtest_host libgtest_main_host liblog
LOCAL_LDFLAGS:= -g -lrt -ldl -lstdc++ -lm -fno-exceptions
LOCAL_MODULE:= pts_device_opengl_test
include $(BUILD_HOST_EXECUTABLE)

endif # linux
