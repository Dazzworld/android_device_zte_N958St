$(call inherit-product, device/zte/N958St/N958St.mk)

# Inherit from these products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_NAME := full_N958St
PRODUCT_DEVICE := N958St
