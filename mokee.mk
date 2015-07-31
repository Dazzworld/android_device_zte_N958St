## Specify phone tech before including full_phone
$(call inherit-product, vendor/mk/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := N958St

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/N958St/device_N958St.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := N958St
PRODUCT_NAME := mk_N958St
PRODUCT_BRAND := zte
PRODUCT_MODEL := N958St
PRODUCT_MANUFACTURER := zte
