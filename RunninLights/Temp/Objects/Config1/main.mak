SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\ProgramData\Oracle\Java\javapath;C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Users\Mathi\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\Mathi\AppData\Local\GitHubDesktop\bin;C:\Users\Mathi\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\Mathi\AppData\Local\GitHubDesktop\bin
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.3.3.196
export AS_COMPANY_NAME :=  
export AS_USER_NAME := Mathi
export AS_PATH := C:/BrAutomation/AS43
export AS_BIN_PATH := C:/BrAutomation/AS43/bin-en
export AS_PROJECT_PATH := C:/Users/Mathi/OneDrive/Dokumenter/GitHub/robtek17/RunninLights
export AS_PROJECT_NAME := RunninLights
export AS_SYSTEM_PATH := C:/BrAutomation/AS/System
export AS_VC_PATH := C:/BrAutomation/AS43/AS/VC
export AS_TEMP_PATH := C:/Users/Mathi/OneDrive/Dokumenter/GitHub/robtek17/RunninLights/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Users/Mathi/OneDrive/Dokumenter/GitHub/robtek17/RunninLights/Binaries
export AS_GNU_INST_PATH := C:/BrAutomation/AS43/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/BrAutomation/AS43/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/BrAutomation/AS43
export WIN32_AS_PATH := "C:\BrAutomation\AS43"
export WIN32_AS_BIN_PATH := "C:\BrAutomation\AS43\bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Users\Mathi\OneDrive\Dokumenter\GitHub\robtek17\RunninLights"
export WIN32_AS_SYSTEM_PATH := "C:\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\BrAutomation\AS43\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Users\Mathi\OneDrive\Dokumenter\GitHub\robtek17\RunninLights\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Users\Mathi\OneDrive\Dokumenter\GitHub\robtek17\RunninLights\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\BrAutomation\AS43\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\BrAutomation\AS43"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/RunninLights.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndTransfer'  

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'C:/Users/Mathi/OneDrive/Dokumenter/GitHub/robtek17/RunninLights/Temp/Objects/$(AS_CONFIGURATION)/X20CP1382/#cpu.mak' -k 

