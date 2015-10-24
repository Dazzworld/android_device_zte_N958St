

# Release name
PRODUCT_RELEASE_NAME := N958St



# Inherit device configuration
$(call inherit-product, device/zte/N958St/full_N958St.mk)

# Inherit some common MK stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)


## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := N958St
PRODUCT_NAME := mk_N958St
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := N958St
PRODUCT_MANUFACTURER := ZTE

PRODUCT_DEFAULT_LANGUAGE := zh
PRODUCT_DEFAULT_REGION := CN
