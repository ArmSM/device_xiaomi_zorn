# Logging
SPAMMY_LOG_TAGS := \
    libsensor-boledalgo \
    libsensor-parseRGB

ifneq ($(TARGET_BUILD_VARIANT),eng)
PRODUCT_VENDOR_PROPERTIES += \
    $(foreach tag,$(SPAMMY_LOG_TAGS),log.tag.$(tag)=S)
endif
