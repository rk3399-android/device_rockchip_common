#GENERATE MANIFEST
$(shell test -d .repo && .repo/repo/repo manifest -r -o commit_id.xml)

ifeq (,$(wildcard commit_id.xml))
BOARD_RECORD_COMMIT_ID := false
endif

-include $(TARGET_DEVICE_DIR)/prebuild.mk

