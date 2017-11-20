$(AS_CPU_PATH)/sysconf.br: \
	$(AS_PROJECT_CONFIG_PATH)/Hardware.hw 
	@'$(AS_BIN_PATH)/BR.AS.ConfigurationBuilder.exe' '$(AS_PROJECT_CONFIG_PATH)/Hardware.hw'  -c Config1 -sysconf -S 'X20CP1382' -Z 'Acp10Arnc0: 3.16.2, mapp: 1.60.0, UnitSystem: n.d, TextSystem: n.d, Connectivity: n.d, AAS: n.d' -o '$(AS_CPU_PATH)/sysconf.br' -T SG4  -B I4.33 -P '$(AS_PROJECT_PATH)' -s 'Config1' -secret '$(AS_PROJECT_PATH)_br.as.configurationbuilder.exe'

-include $(AS_CPU_PATH)/Force.mak 
