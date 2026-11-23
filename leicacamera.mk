# HyperOS Leica Camera for Xiaomi 12 Pro (zeus)
LEICACAMERA_PATH := vendor/xiaomi/leicacamera-zeus

PRODUCT_SOONG_NAMESPACES += $(LEICACAMERA_PATH)

PRODUCT_PACKAGES += \
    LeicaMiuiCamera \
    libcamera_algoup_jni.xiaomi_leica \
    libcamera_mianode_jni.xiaomi_leica \
    libgui_shim_miuicamera_leica \
    libmicampostproc_client_leica \
    vendor.xiaomi.hardware.campostproc@1.0_leica

PRODUCT_COPY_FILES += \
    $(LEICACAMERA_PATH)/configs/public.libraries-xiaomi.txt:$(TARGET_COPY_OUT_SYSTEM)/etc/public.libraries-xiaomi.txt \
    $(LEICACAMERA_PATH)/configs/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml \
    $(LEICACAMERA_PATH)/configs/miuicamera-hiddenapi-package-allowlist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-allowlist.xml

# Up to 60x zoom (idea from TonyC's "Mi 12 Pro 60x zoom enable" module).
# Must be inherited BEFORE vendor/xiaomi/zeus/zeus-vendor.mk (first copy wins).
PRODUCT_COPY_FILES += \
    $(LEICACAMERA_PATH)/configs/camxoverridesettings.txt:$(TARGET_COPY_OUT_VENDOR)/etc/camera/camxoverridesettings.txt

PRODUCT_SYSTEM_PROPERTIES += \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    persist.vendor.camera.privapp.list=com.android.camera \
    vendor.camera.aux.packagelist=com.android.camera \
    ro.miui.notch=1
