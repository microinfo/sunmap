LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := game_shared

LOCAL_MODULE_FILENAME := libgame

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/HelloWorldScene.cpp \
				   ../../Classes/ControlLayer.cpp \
				   ../../Classes/VisibleRect.cpp \
				   ../../Classes/LayerSwitcher.cpp \
				   ../../Classes/PublicMsgHandler.cpp \
				   ../../Classes/sqlite3.c \
				   ../../Classes/AMapStrategy.cpp \
				   ../../Classes/ArcGisMapStrategy.cpp \
				   ../../Classes/BingMapStrategy.cpp \
				   ../../Classes/BitmapCache.cpp \
				   ../../Classes/GeoUtils.cpp \
				   ../../Classes/GoogleSatelliteMapStrategy.cpp \
				   ../../Classes/GoogleTerrainMapStrategy.cpp \
				   ../../Classes/GoogleVectorMapStrategy.cpp \
				   ../../Classes/MapControl.cpp \
				   ../../Classes/MapStrategy.cpp \
				   ../../Classes/MapStrategyFactory.cpp \
				   ../../Classes/OpenStreetMapStrategy.cpp \
				   ../../Classes/PhysicMap.cpp \
				   ../../Classes/RawTile.cpp \
				   ../../Classes/SqliteLocalStorage.cpp \
				   ../../Classes/SuperMapCloudMapStrategy.cpp \
				   ../../Classes/TiandituMapStrategy.cpp \
				   ../../Classes/TileResolver_Android.cpp

                   
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes                   

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static cocosdenshion_static cocos_extension_static
            
include $(BUILD_SHARED_LIBRARY)

$(call import-module,CocosDenshion/android) \
$(call import-module,cocos2dx) \
$(call import-module,extensions)
