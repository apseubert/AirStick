################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

-include makefile.init

RM :=  -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include user_platform/subdir.mk
-include user_app/subdir.mk
-include sdk_profiles/subdir.mk
-include sdk_driver/subdir.mk
-include sdk_boot/subdir.mk
-include sdk_ble/subdir.mk
-include sdk_arch/subdir.mk
-include sdk_app/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(JMP_DEPS)),)
-include $(JMP_DEPS)
endif
ifneq ($(strip $(FSY_DEPS)),)
-include $(FSY_DEPS)
endif
ifneq ($(strip $(C_UPPER_DEPS)),)
-include $(C_UPPER_DEPS)
endif
ifneq ($(strip $(SRC_UPPER_DEPS)),)
-include $(SRC_UPPER_DEPS)
endif
ifneq ($(strip $(P_UPPER_DEPS)),)
-include $(P_UPPER_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(PP_UPPER_DEPS)),)
-include $(PP_UPPER_DEPS)
endif
ifneq ($(strip $(P_DEPS)),)
-include $(P_DEPS)
endif
ifneq ($(strip $(FSY_UPPER_DEPS)),)
-include $(FSY_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
$(C_DEPS):$(SMS_ASM)
endif
ifneq ($(strip $(SRC_DEPS)),)
-include $(SRC_DEPS)
endif
ifneq ($(strip $(JMP_UPPER_DEPS)),)
-include $(JMP_UPPER_DEPS)
endif
ifneq ($(strip $(PP_DEPS)),)
-include $(PP_DEPS)
endif
ifneq ($(strip $(SX_DEPS)),)
-include $(SX_DEPS)
endif
ifneq ($(strip $(ASM_UPPER_DEPS)),)
-include $(ASM_UPPER_DEPS)
endif
ifneq ($(strip $(SX_UPPER_DEPS)),)
-include $(SX_UPPER_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
OBJCOPY += \
prox_reporter.bin \

SECONDARY_SIZE += \
prox_reporter.siz \


# All Target
all:
	$(MAKE) --no-print-directory pre-build
	$(MAKE) --no-print-directory main-build

# Main-build Target
main-build: prox_reporter.elf secondary-outputs

# Tool invocations
prox_reporter.elf: $(OBJS) $(USER_OBJS) $(LIBRARY_GENERATOR_OUTPUTTYPE_OUTPUTS) $(LINKER_SCRIPT)
	@echo 'Building target: $@'
	clang -v -Oz -flto -mthumb --target=armv6m-none-eabi -mfloat-abi=soft  -march=armv6m -fno-exceptions -fno-rtti -lcrt0  -T ldscript_DA14585_586.lds -L"C:\\Users\\apseu\\Downloads\\SDK_6.0.22.1401\\DA145xx_SDK\\6.0.22.1401\\projects\\target_apps\\ble_examples\\prox_reporter\\e2studio\\DA14585" -L"../../../../../../sdk/common_project_files/misc" -L"../../../../../../sdk/platform/system_library/output/Keil_5" -Wl,-Map=prox_reporter.map -Wl,--start-group -l:da14585_586.lib  -Wl,--end-group -Wl,-eReset_Handler -l:da14585_586.lib -Wl,--cref -Wl,--icf=none -o "prox_reporter.elf" $(OBJS) $(USER_OBJS)
prox_reporter.bin: prox_reporter.elf
	llvm-objcopy "prox_reporter.elf" -O binary  "prox_reporter.bin"
prox_reporter.siz: prox_reporter.elf
	llvm-size --format=berkeley "prox_reporter.elf"
# Other Targets
clean:
	-$(file > clean_file.tmp,  $(JMP_DEPS)  $(FSY_DEPS)  $(C_UPPER_DEPS)  $(SECONDARY_SIZE)  $(SRC_UPPER_DEPS)  $(P_UPPER_DEPS)  $(S_DEPS)  $(PP_UPPER_DEPS)  $(P_DEPS)  $(FSY_UPPER_DEPS)  $(C_DEPS)  $(CREF)  $(SRC_DEPS)  $(OBJCOPY)  $(JMP_UPPER_DEPS)  $(PP_DEPS)  $(SX_DEPS)  $(ASM_UPPER_DEPS)  $(OBJS)  $(SX_UPPER_DEPS)  $(ASM_DEPS)  $(MAP)  $(S_UPPER_DEPS) )
	-@ xargs -P 2 -s 32000 -t -a clean_file.tmp $(RM)
	-@$(RM) clean_file.tmp
	-$(RM)  prox_reporter.elf
	-@echo ' '

pre-build:
	-make generate_ldscripts PRE_BUILD_EXTRA_DEFS="-D__DA14585__" CC="clang" LDSCRIPT_INCLUDE_DIR="../../src/config ../../../../../../sdk/common_project_files" LDSCRIPT_PATH="../../../../../../sdk/common_project_files/ldscripts" LDSCRIPT_FILES="ldscript_DA14585_586.lds"
	-@echo ' '

secondary-outputs: $(OBJCOPY) $(SECONDARY_SIZE)

.PHONY: all clean dependents  main-build pre-build

-include ../makefile.targets
