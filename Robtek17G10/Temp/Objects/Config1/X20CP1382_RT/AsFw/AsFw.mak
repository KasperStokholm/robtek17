$(AS_CPU_PATH)/asfw.br: \
	$(AS_PROJECT_CONFIG_PATH)/Hardware.hw \
	FORCE
	@'$(AS_BIN_PATH)/BR.AS.ConfigurationBuilder.exe'  '$(AS_PROJECT_CONFIG_PATH)/Hardware.hw' -v V1.00.0 -S 'X20CP1382_RT' -o '$(AS_CPU_PATH)/asfw.br' -T SG4 -B I4.33 -P '$(AS_PROJECT_PATH)' -c '$(AS_CONFIGURATION)' -zip -s X20CP1382_RT -firmware -secret '$(AS_PROJECT_PATH)_br.as.configurationbuilder.exe'


FORCE: