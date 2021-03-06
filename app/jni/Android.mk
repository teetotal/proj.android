LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(call import-add-path,$(LOCAL_PATH)/../../../cocos2d)
$(call import-add-path,$(LOCAL_PATH)/../../../cocos2d/external)
$(call import-add-path,$(LOCAL_PATH)/../../../cocos2d/cocos)
$(call import-add-path,$(LOCAL_PATH)/../../../cocos2d/cocos/audio/include)

LOCAL_MODULE := MyGame_shared

LOCAL_MODULE_FILENAME := libMyGame

LOCAL_SRC_FILES := $(LOCAL_PATH)/hellocpp/main.cpp \
                   $(LOCAL_PATH)/../../../Classes/library/quest.cpp \
                   $(LOCAL_PATH)/../../../Classes/library/farming.cpp \
                   $(LOCAL_PATH)/../../../Classes/library/inventory.cpp \
                   $(LOCAL_PATH)/../../../Classes/library/trade.cpp \
                   $(LOCAL_PATH)/../../../Classes/library/util.cpp \
                   $(LOCAL_PATH)/../../../Classes/library/sql.cpp \
                   $(LOCAL_PATH)/../../../Classes/logics.cpp \
                   $(LOCAL_PATH)/../../../Classes/ui/ui.cpp \
                   $(LOCAL_PATH)/../../../Classes/ui/ui_gacha.cpp \
                   $(LOCAL_PATH)/../../../Classes/ui/ui_cultivation.cpp \
                   $(LOCAL_PATH)/../../../Classes/AppDelegate.cpp \
                   $(LOCAL_PATH)/../../../Classes/MainScene.cpp \
                   $(LOCAL_PATH)/../../../Classes/ActionScene.cpp \
                   $(LOCAL_PATH)/../../../Classes/AlertScene.cpp \
                   $(LOCAL_PATH)/../../../Classes/FarmingScene.cpp \
                   $(LOCAL_PATH)/../../../Classes/ActionBasic.cpp \


LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../Classes
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../cocos2d/external

# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END


LOCAL_STATIC_LIBRARIES := cocos2dx_static
LOCAL_STATIC_LIBRARIES += sqlite3_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-add-path, $(LOCAL_PATH)/../../../cocos2d)
$(call import-module, cocos)
$(call import-module, sqlite3)


# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
