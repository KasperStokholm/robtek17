SHELL := cmd.exe
CYGWIN=nontsec
export PATH := C:\ProgramData\Oracle\Java\javapath;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\NVIDIA Corporation\PhysX\Common;C:\Users\vikpo\AppData\Local\Programs\Python\Python36-32\Scripts\;C:\Users\vikpo\AppData\Local\Programs\Python\Python36-32\;C:\Users\vikpo\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Users\vikpo\AppData\Local\Programs\Python\Python36-32\Scripts\;C:\Users\vikpo\AppData\Local\Programs\Python\Python36-32\;C:\Users\vikpo\AppData\Local\Microsoft\WindowsApps;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode
export AS_BUILD_MODE := BuildAndTransfer
export AS_VERSION := 4.3.3.196
export AS_COMPANY_NAME :=  
export AS_USER_NAME := vikpo
export AS_PATH := C:/Users/vikpo/Desktop/BR/AS43
export AS_BIN_PATH := C:/Users/vikpo/Desktop/BR/AS43/bin-en
export AS_PROJECT_PATH := C:/Users/vikpo/Desktop/BR/robtek17/Robtek17G10
export AS_PROJECT_NAME := Robtek17G10
export AS_SYSTEM_PATH := C:/Users/vikpo/Desktop/BR/AS/System
export AS_VC_PATH := C:/Users/vikpo/Desktop/BR/AS43/AS/VC
export AS_TEMP_PATH := C:/Users/vikpo/Desktop/BR/robtek17/Robtek17G10/Temp
export AS_CONFIGURATION := Config1
export AS_BINARIES_PATH := C:/Users/vikpo/Desktop/BR/robtek17/Robtek17G10/Binaries
export AS_GNU_INST_PATH := C:/Users/vikpo/Desktop/BR/AS43/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/Users/vikpo/Desktop/BR/AS43/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/Users/vikpo/Desktop/BR/AS43
export WIN32_AS_PATH := "C:\Users\vikpo\Desktop\BR\AS43"
export WIN32_AS_BIN_PATH := "C:\Users\vikpo\Desktop\BR\AS43\bin-en"
export WIN32_AS_PROJECT_PATH := "C:\Users\vikpo\Desktop\BR\robtek17\Robtek17G10"
export WIN32_AS_SYSTEM_PATH := "C:\Users\vikpo\Desktop\BR\AS\System"
export WIN32_AS_VC_PATH := "C:\Users\vikpo\Desktop\BR\AS43\AS\VC"
export WIN32_AS_TEMP_PATH := "C:\Users\vikpo\Desktop\BR\robtek17\Robtek17G10\Temp"
export WIN32_AS_BINARIES_PATH := "C:\Users\vikpo\Desktop\BR\robtek17\Robtek17G10\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\Users\vikpo\Desktop\BR\AS43\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\Users\vikpo\Desktop\BR\AS43"

.suffixes:

ProjectMakeFile:

	@'$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe' '$(AS_PROJECT_PATH)/Robtek17G10.apj' -t '$(AS_TEMP_PATH)' -c '$(AS_CONFIGURATION)' -o '$(AS_BINARIES_PATH)'   -sfas -buildMode 'BuildAndTransfer'  

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'C:/Users/vikpo/Desktop/BR/robtek17/Robtek17G10/Temp/Objects/$(AS_CONFIGURATION)/X20CP1382_RT/#cpu.mak' -k 

