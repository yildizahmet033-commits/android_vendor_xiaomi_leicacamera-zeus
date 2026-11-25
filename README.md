# HyperOS Leica Camera for Xiaomi 12 Pro (zeus) - ROM integration

Prebuilt files to ship the patched HyperOS Camera 6.2 (Leica Authentic style, full Leica watermark, 0.6x, 2x/5x tele,
up to 60x zoom, 1080p 60 FPS, portrait, beautify) inside an AOSP based Android 17 ROM
(tested on Evolution X 12).

The camera APK is the one built by the patcher in
https://github.com/yildizahmet033-commits/zeus-hyperos-leica-camera (release v1.1).

## Usage

Local manifest:

    <project path="vendor/xiaomi/leicacamera-zeus" name="yildizahmet033-commits/android_vendor_xiaomi_leicacamera-zeus" remote="github" revision="main" />

device.mk (before `vendor/xiaomi/zeus/zeus-vendor.mk`, so the 60x camx settings win):

    $(call inherit-product, vendor/xiaomi/leicacamera-zeus/leicacamera.mk)

BoardConfig.mk:

    include vendor/xiaomi/leicacamera-zeus/BoardConfig.mk

## Credits

See the credits of https://github.com/yildizahmet033-commits/zeus-hyperos-leica-camera.
HyperOS Camera belongs to Xiaomi.
