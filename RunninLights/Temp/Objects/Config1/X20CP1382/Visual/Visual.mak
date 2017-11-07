######################################################
#                                                    #
# Automatic generated Makefile for Visual Components #
#                                                    #
#                  Do NOT edit!                      #
#                                                    #
######################################################

VCC:=@'$(AS_BIN_PATH)/br.vc.pc.exe'
LINK:=@'$(AS_BIN_PATH)/BR.VC.Link.exe'
MODGEN:=@'$(AS_BIN_PATH)/BR.VC.ModGen.exe'
VCPL:=@'$(AS_BIN_PATH)/BR.VC.PL.exe'
VCHWPP:=@'$(AS_BIN_PATH)/BR.VC.HWPP.exe'
VCDEP:=@'$(AS_BIN_PATH)/BR.VC.Depend.exe'
VCFLGEN:=@'$(AS_BIN_PATH)/BR.VC.lfgen.exe'
VCREFHANDLER:=@'$(AS_BIN_PATH)/BR.VC.CrossReferenceHandler.exe'
VCXREFEXTENDER:=@'$(AS_BIN_PATH)/BR.AS.CrossRefVCExtender.exe'
RM=CMD /C DEL
PALFILE_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/Palette.vcr
VCCFLAGS_Visual=-server -proj Visual -vc '$(AS_PROJECT_PATH)/Logical/VisualSDU/VCObject.vc' -prj_path '$(AS_PROJECT_PATH)' -temp_path '$(AS_TEMP_PATH)' -cfg $(AS_CONFIGURATION) -plc $(AS_PLC) -plctemp $(AS_TEMP_PLC) -cpu_path '$(AS_CPU_PATH)'
VCFIRMWARE=4.33.0
VCFIRMWAREPATH=$(AS_VC_PATH)/Firmware/V4.33.0/SG4
VCOBJECT_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/VCObject.vc
VCSTARTUP='vcstart.br'
VCLOD='vclod.br'
VCSTPOST='vcstpost.br'
TARGET_FILE_Visual=$(AS_CPU_PATH)/Visual.br
OBJ_SCOPE_Visual=
PRJ_PATH_Visual=$(AS_PROJECT_PATH)
SRC_PATH_Visual=$(AS_PROJECT_PATH)/Logical/$(OBJ_SCOPE_Visual)/VisualSDU
TEMP_PATH_Visual=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visual
TEMP_PATH_Shared=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared
TEMP_PATH_ROOT_Visual=$(AS_TEMP_PATH)
VC_LIBRARY_LIST_Visual=$(TEMP_PATH_Visual)/libraries.vci
VC_XREF_BUILDFILE_Visual=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.build
VC_XREF_CLEANFILE=$(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcxref.clean
VC_LANGUAGES_Visual=$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr
CPUHWC='$(TEMP_PATH_Visual)/cpuhwc.vci'
VC_STATIC_OPTIONS_Visual='$(TEMP_PATH_Visual)/vcStaticOptions.xml'
VC_STATIC_OPTIONS_Shared='$(TEMP_PATH_Shared)/vcStaticOptions.xml'
# include Shared and Font Makefile (only once)
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCFntDat/Font_Visual.mak
ifneq ($(VCINC),1)
	VCINC=1
	include $(AS_TEMP_PATH)/objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/VCShared.mak
endif

DEPENDENCIES_Visual=-d vcgclass -profile 'False'
DEFAULT_STYLE_SHEET_Visual='Source[local].StyleSheet[Color]'
SHARED_MODULE=$(TEMP_PATH_ROOT_Visual)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/vcshared.br
LFNTFLAGS_Visual=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)'
BDRFLAGS_Visual=-P '$(AS_PROJECT_PATH)' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)'

# Local Libs
LIB_LOCAL_OBJ_Visual=$(TEMP_PATH_Visual)/localobj.vca

# Hardware sources
PANEL_HW_OBJECT_Visual=$(TEMP_PATH_ROOT_Visual)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visual/dis.Hardware.vco
PANEL_HW_VCI_Visual=$(TEMP_PATH_ROOT_Visual)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/Visual/dis.Hardware.vci
PANEL_HW_SOURCE_Visual=C:/Users/Mathi/OneDrive/Dokumenter/GitHub/robtek17/RunninLights/Physical/Config1/Hardware.hw 
DIS_OBJECTS_Visual=$(PANEL_HW_OBJECT_Visual) $(KEYMAP_OBJECTS_Visual)

# KeyMapping flags
$(TEMP_PATH_Visual)/dis.PS2-Keyboard.vco: $(AS_PROJECT_PATH)/Physical/Config1/X20CP1382/VC/PS2-Keyboard.dis $(PANEL_HW_SOURCE_Visual)
	$(VCHWPP) -f '$(PANEL_HW_SOURCE_Visual)' -o '$(subst .vco,.vci,$(TEMP_PATH_Visual)/dis.PS2-Keyboard.vco)' -n VisualSDU -d Visual -pal '$(PALFILE_Visual)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'I4.33' -L '' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_Visual) -sos $(VC_STATIC_OPTIONS_Shared) -keyboard '$(AS_PROJECT_PATH)/Physical/Config1/X20CP1382/VC/PS2-Keyboard.dis' -fp '$(AS_VC_PATH)/Firmware/V4.33.0/SG4' -prj '$(AS_PROJECT_PATH)' -apj 'RunninLights' -sfas -vcob '$(VCOBJECT_Visual)'
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_Visual)' $(VCCFLAGS_Visual) -p Visual -sfas

KEYMAP_SOURCES_Visual=$(AS_PROJECT_PATH)/Physical/Config1/X20CP1382/VC/PS2-Keyboard.dis 
KEYMAP_OBJECTS_Visual=$(TEMP_PATH_Visual)/dis.PS2-Keyboard.vco 

# All Source Objects
FNINFO_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/Fonts/DefaultFont.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Fonts/Arial9px.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Fonts/Arial9pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Fonts/Arial10pxBold.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Fonts/Arial12px.fninfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Fonts/Arial9pxValue.fninfo 

BMINFO_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA1.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA2.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA3.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/NumPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/NumPad.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AcknowledgeReset.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmActive.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmBypassOFF.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmBypassON.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmInactive.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmLatched.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmNotQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmQuit.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/Reset.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ResetAcknowledge.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/Triggered.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ListPadHor.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ListPadVer.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/backward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/backward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/global_area_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/global_area_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/forward_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/forward_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/control_button_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/control_button_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/right_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/right_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/left_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/left_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/multi_up_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/multi_up_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/multi_down_active.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/multi_down_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ProgressBorder.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/down_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/down_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/up_active_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/global_area_gradient_upside.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/global_area_gradient_downside.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/frame_header.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/up_pressed_control.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/EditPadVGA.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/EditPadVGA_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneNumPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneListPadVer_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPad_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPad_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPadQVGA1_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneEditpadQVGA2_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneEditPadQVGA3_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneEditPadVga_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneEditPadVga_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneListPadHor_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneListPadHor_released.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneListPadVer_pressed.bminfo \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneNumPad_pressed.bminfo 

BMGRP_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/AlphaPadQVGA.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/NumPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/AlphaPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/AlarmEvent.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/AlarmState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/BypassState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/AcknowledgeState.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/NavigationPad.bmgrp \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/Borders.bmgrp 

PAGE_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/Pages/Init_Page.page 

LAYER_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/Layers/CommonLayer_1.layer 

VCS_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/StyleSheets/Gray.vcs \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/StyleSheets/Color.vcs 

BDR_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/Raised.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/Sunken.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/Etched.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/Bump.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/SunkenOuter.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/RaisedInner.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/Flat_black.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/Flat_grey.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/BackwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/BackwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ControlActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ControlPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/DownActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/DownPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ForwardActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ForwardPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/GlobalAreaActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/GlobalAreaPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/MultiScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/MultiScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/MultiScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/MultiScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ProgressBarBorder.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollDownActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollDownPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollUpActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollUpPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollLeftActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollLeftPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollRightActive.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollRightPressed.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/UpActiveControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/UpPressedControl.bdr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/FrameHeader.bdr 

TPR_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/TouchPads/NumPad.tpr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/TouchPads/AlphaPadQVGA.tpr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/TouchPads/AlphaPad.tpr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/TouchPads/NavigationPad_ver.tpr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/TouchPads/NavigationPad_hor.tpr \
	$(AS_PROJECT_PATH)/Logical/VisualSDU/TouchPads/EditPad.tpr 

TDC_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/Trends/TrendData.tdc 

CLM_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/ColorMaps/cmLED.clm 

VCVK_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/VirtualKeys.vcvk 

VCR_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/Palette.vcr 

# Runtime Object sources
VCR_OBJECT_Visual=$(TEMP_PATH_Visual)/vcrt.vco
VCR_SOURCE_Visual=$(SRC_PATH_Visual)/package.vcp
# All Source Objects END

#Panel Hardware
$(PANEL_HW_VCI_Visual): $(PANEL_HW_SOURCE_Visual) $(VC_LIBRARY_LIST_Visual) $(KEYMAP_SOURCES_Visual)
	$(VCHWPP) -f '$<' -o '$@' -n VisualSDU -d Visual -pal '$(PALFILE_Visual)' -c '$(AS_CONFIGURATION)' -p '$(AS_PLC)' -ptemp '$(AS_TEMP_PLC)' -B 'I4.33' -L '' -verbose 'False' -profile 'False' -hw '$(CPUHWC)' -warninglevel 2 -so $(VC_STATIC_OPTIONS_Visual) -sos $(VC_STATIC_OPTIONS_Shared) -fp '$(AS_VC_PATH)/Firmware/V4.33.0/SG4' -sfas -prj '$(AS_PROJECT_PATH)' -apj 'RunninLights' -vcob '$(VCOBJECT_Visual)'

$(PANEL_HW_OBJECT_Visual): $(PANEL_HW_VCI_Visual) $(PALFILE_Visual) $(VC_LIBRARY_LIST_Visual)
	$(VCC) -f '$(subst .vco,.vci,$@)' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -k '$(VCVK_SOURCES_Visual)' $(VCCFLAGS_Visual) -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


# Pages
PAGE_OBJECTS_Visual = $(addprefix $(TEMP_PATH_Visual)/page., $(notdir $(PAGE_SOURCES_Visual:.page=.vco)))

$(TEMP_PATH_Visual)/page.Init_Page.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Pages/Init_Page.page $(VC_LANGUAGES_Visual)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual) -P '$(AS_PROJECT_PATH)' -ds '$(SRC_PATH_Visual)/StyleSheets/Color.vcs' -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


#Pages END




# Stylesheets
VCS_OBJECTS_Visual = $(addprefix $(TEMP_PATH_Visual)/vcs., $(notdir $(VCS_SOURCES_Visual:.vcs=.vco)))

$(TEMP_PATH_Visual)/vcs.Gray.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/StyleSheets/Gray.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_Visual) -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/vcs.Color.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/StyleSheets/Color.vcs
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual) -P '$(AS_PROJECT_PATH)' -ds $(DEFAULT_STYLE_SHEET_Visual) -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


#Stylesheets END




# Layers
LAYER_OBJECTS_Visual = $(addprefix $(TEMP_PATH_Visual)/layer., $(notdir $(LAYER_SOURCES_Visual:.layer=.vco)))

$(TEMP_PATH_Visual)/layer.CommonLayer_1.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Layers/CommonLayer_1.layer $(VC_LANGUAGES_Visual)
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual) -ds $(DEFAULT_STYLE_SHEET_Visual) -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


#Layers END




# Virtual Keys
VCVK_OBJECTS_Visual = $(addprefix $(TEMP_PATH_Visual)/vcvk., $(notdir $(VCVK_SOURCES_Visual:.vcvk=.vco)))

$(TEMP_PATH_Visual)/vcvk.VirtualKeys.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/VirtualKeys.vcvk
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas

$(VCVK_OBJECTS_Visual): $(VC_LANGUAGES_Visual)

#Virtual Keys END




# Touch Pads
TPR_OBJECTS_Visual = $(addprefix $(TEMP_PATH_Visual)/tpr., $(notdir $(TPR_SOURCES_Visual:.tpr=.vco)))

$(TEMP_PATH_Visual)/tpr.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/TouchPads/NumPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual) -prj 'C:/Users/Mathi/OneDrive/Dokumenter/GitHub/robtek17/RunninLights/Logical/VisualSDU' -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/tpr.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/TouchPads/AlphaPadQVGA.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual) -prj 'C:/Users/Mathi/OneDrive/Dokumenter/GitHub/robtek17/RunninLights/Logical/VisualSDU' -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/tpr.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/TouchPads/AlphaPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual) -prj 'C:/Users/Mathi/OneDrive/Dokumenter/GitHub/robtek17/RunninLights/Logical/VisualSDU' -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/tpr.NavigationPad_ver.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/TouchPads/NavigationPad_ver.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual) -prj 'C:/Users/Mathi/OneDrive/Dokumenter/GitHub/robtek17/RunninLights/Logical/VisualSDU' -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/tpr.NavigationPad_hor.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/TouchPads/NavigationPad_hor.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual) -prj 'C:/Users/Mathi/OneDrive/Dokumenter/GitHub/robtek17/RunninLights/Logical/VisualSDU' -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/tpr.EditPad.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/TouchPads/EditPad.tpr
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual) -prj 'C:/Users/Mathi/OneDrive/Dokumenter/GitHub/robtek17/RunninLights/Logical/VisualSDU' -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


#Touch Pads END




# BitmapGroups
BMGRP_OBJECTS_Visual = $(addprefix $(TEMP_PATH_Visual)/bmgrp., $(notdir $(BMGRP_SOURCES_Visual:.bmgrp=.vco)))

$(TEMP_PATH_Visual)/bmgrp.AlphaPadQVGA.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/AlphaPadQVGA.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bmgrp.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/NumPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bmgrp.AlphaPad.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/AlphaPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bmgrp.AlarmEvent.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/AlarmEvent.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bmgrp.AlarmState.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/AlarmState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bmgrp.BypassState.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/BypassState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bmgrp.AcknowledgeState.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/AcknowledgeState.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bmgrp.NavigationPad.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/NavigationPad.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bmgrp.Borders.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/BitmapGroups/Borders.bmgrp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


#BitmapGroups END




# Bitmaps
BMINFO_OBJECTS_Visual = $(addprefix $(TEMP_PATH_Visual)/bminfo., $(notdir $(BMINFO_SOURCES_Visual:.bminfo=.vco)))

$(TEMP_PATH_Visual)/bminfo.AlphaPadQVGA1.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA1.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA1.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlphaPadQVGA2.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA2.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA2.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlphaPadQVGA3.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA3.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA3.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlphaPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlphaPadVGA.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlphaPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.NumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/NumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/NumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.NumPad.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/NumPad.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/NumPad.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AcknowledgeReset.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AcknowledgeReset.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AcknowledgeReset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlarmActive.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmActive.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmActive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlarmBypassOFF.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmBypassOFF.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmBypassOFF.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlarmBypassON.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmBypassON.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmBypassON.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlarmInactive.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmInactive.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmInactive.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlarmLatched.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmLatched.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmLatched.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlarmNotQuit.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmNotQuit.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmNotQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.AlarmQuit.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmQuit.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/AlarmQuit.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.Reset.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/Reset.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/Reset.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.ResetAcknowledge.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ResetAcknowledge.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ResetAcknowledge.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.Triggered.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/Triggered.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/Triggered.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.ListPadHor.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ListPadHor.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ListPadHor.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.ListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.ListPadVer.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ListPadVer.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ListPadVer.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.ListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.backward_active.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/backward_active.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/backward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.backward_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/backward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/backward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.global_area_active.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/global_area_active.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/global_area_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.global_area_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/global_area_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/global_area_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.forward_active.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/forward_active.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/forward_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.forward_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/forward_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/forward_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.control_button_active.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/control_button_active.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/control_button_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.control_button_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/control_button_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/control_button_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.right_active.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/right_active.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/right_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.right_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/right_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/right_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.left_active.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/left_active.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/left_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.left_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/left_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/left_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.up_active.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/up_active.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.up_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.down_active.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/down_active.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.down_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.multi_up_active.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/multi_up_active.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/multi_up_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.multi_up_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/multi_up_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/multi_up_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.multi_down_active.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/multi_down_active.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/multi_down_active.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.multi_down_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/multi_down_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/multi_down_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.ProgressBorder.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ProgressBorder.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/ProgressBorder.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.down_active_control.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/down_active_control.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/down_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.down_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/down_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/down_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.up_active_control.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/up_active_control.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/up_active_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.global_area_gradient_upside.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/global_area_gradient_upside.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/global_area_gradient_upside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.global_area_gradient_downside.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/global_area_gradient_downside.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/global_area_gradient_downside.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.frame_header.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/frame_header.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/frame_header.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.up_pressed_control.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/up_pressed_control.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/up_pressed_control.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.EditPadVGA.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/EditPadVGA.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/EditPadVGA.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.EditPadVGA_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/EditPadVGA_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/EditPadVGA_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneNumPad_released.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneNumPad_released.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneNumPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneListPadVer_released.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneListPadVer_released.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneListPadVer_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneAlphaPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneAlphaPad_released.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPad_released.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPad_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneAlphaPadQVGA1_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPadQVGA1_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPadQVGA1_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneAlphaPadQVGA1_released.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPadQVGA1_released.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPadQVGA1_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneAlphaPadQVGA2_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPadQVGA2_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPadQVGA2_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneAlphaPadQVGA3_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPadQVGA3_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneAlphaPadQVGA3_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneEditpadQVGA2_released.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneEditpadQVGA2_released.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneEditpadQVGA2_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneEditPadQVGA3_released.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneEditPadQVGA3_released.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneEditPadQVGA3_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneEditPadVga_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneEditPadVga_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneEditPadVga_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneEditPadVga_released.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneEditPadVga_released.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneEditPadVga_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneListPadHor_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneListPadHor_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneListPadHor_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneListPadHor_released.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneListPadHor_released.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneListPadHor_released.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneListPadVer_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneListPadVer_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneListPadVer_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


$(TEMP_PATH_Visual)/bminfo.zuneNumPad_pressed.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneNumPad_pressed.bminfo $(AS_PROJECT_PATH)/Logical/VisualSDU/Bitmaps/zuneNumPad_pressed.bmp
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


#Bitmaps END




# Trend Data Configuration
TDC_OBJECTS_Visual = $(addprefix $(TEMP_PATH_Visual)/tdc., $(notdir $(TDC_SOURCES_Visual:.tdc=.vco)))

$(TEMP_PATH_Visual)/tdc.TrendData.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/Trends/TrendData.tdc
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


#Trend Data Configuration END




# ColorMap Table
CLM_OBJECTS_Visual = $(addprefix $(TEMP_PATH_Visual)/clm., $(notdir $(CLM_SOURCES_Visual:.clm=.vco)))

$(TEMP_PATH_Visual)/clm.cmLED.vco: $(AS_PROJECT_PATH)/Logical/VisualSDU/ColorMaps/cmLED.clm
	 $(VCC) -f '$<' -o '$@' -l '$(AS_PROJECT_PATH)/Logical/VCShared/Languages.vcr' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -pal '$(PALFILE_Visual)' $(VCCFLAGS_Visual)  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas


#ColorMap Table END


#
# Borders
#
BDR_SOURCES_Visual=$(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/Raised.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/Sunken.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/Etched.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/Bump.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/SunkenOuter.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/RaisedInner.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/Flat_black.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/Flat_grey.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/BackwardActive.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/BackwardPressed.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ControlActive.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ControlPressed.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/DownActiveControl.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/DownPressedControl.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ForwardActive.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ForwardPressed.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/GlobalAreaActive.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/GlobalAreaPressed.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/MultiScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/MultiScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/MultiScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/MultiScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ProgressBarBorder.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollDownActive.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollDownPressed.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollUpActive.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollUpPressed.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollLeftActive.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollLeftPressed.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollRightActive.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/ScrollRightPressed.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/UpActiveControl.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/UpPressedControl.bdr $(AS_PROJECT_PATH)/Logical/VisualSDU/Borders/FrameHeader.bdr 
BDR_OBJECTS_Visual=$(TEMP_PATH_Visual)/bdr.Bordermanager.vco
$(TEMP_PATH_Visual)/bdr.Bordermanager.vco: $(BDR_SOURCES_Visual)
	$(VCC) -f '$<' -o '$@' -pkg '$(SRC_PATH_Visual)' $(BDRFLAGS_Visual) $(VCCFLAGS_Visual) -p Visual$(SRC_PATH_Visual)
#
# Logical fonts
#
$(TEMP_PATH_Visual)/lfnt.en.vco: $(TEMP_PATH_Visual)/en.lfnt $(VC_LANGUAGES_Visual)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Visual) $(VCCFLAGS_Visual) -p Visual -sfas
$(TEMP_PATH_Visual)/lfnt.de.vco: $(TEMP_PATH_Visual)/de.lfnt $(VC_LANGUAGES_Visual)
	 $(VCC) -f '$<' -o '$@' $(LFNTFLAGS_Visual) $(VCCFLAGS_Visual) -p Visual -sfas
LFNT_OBJECTS_Visual=$(TEMP_PATH_Visual)/lfnt.en.vco $(TEMP_PATH_Visual)/lfnt.de.vco 

#Runtime Object
$(VCR_OBJECT_Visual) : $(VCR_SOURCE_Visual)
	$(VCC) -f '$<' -o '$@' -cv '$(AS_PROJECT_PATH)/Logical/VCShared/ControlVersion.cvinfo' -sl en $(VCCFLAGS_Visual) -rt  -p Visual -so $(VC_STATIC_OPTIONS_Visual) -vcr 4330 -sfas
# Local resources Library rules
LIB_LOCAL_RES_Visual=$(TEMP_PATH_Visual)/localres.vca
$(LIB_LOCAL_RES_Visual) : $(TEMP_PATH_Visual)/Visual02.ccf

# Bitmap Library rules
LIB_BMP_RES_Visual=$(TEMP_PATH_Visual)/bmpres.vca
$(LIB_BMP_RES_Visual) : $(TEMP_PATH_Visual)/Visual03.ccf
$(BMGRP_OBJECTS_Visual) : $(PALFILE_Visual) $(VC_LANGUAGES_Visual)
$(BMINFO_OBJECTS_Visual) : $(PALFILE_Visual)

BUILD_FILE_Visual=$(TEMP_PATH_Visual)/BuildFiles.arg
$(BUILD_FILE_Visual) : BUILD_FILE_CLEAN_Visual $(BUILD_SOURCES_Visual)
BUILD_FILE_CLEAN_Visual:
	$(RM) /F /Q '$(BUILD_FILE_Visual)' 2>nul
#All Modules depending to this project
PROJECT_MODULES_Visual=$(AS_CPU_PATH)/Visual01.br $(AS_CPU_PATH)/Visual02.br $(AS_CPU_PATH)/Visual03.br $(FONT_MODULES_Visual) $(SHARED_MODULE)

# General Build rules

$(TARGET_FILE_Visual): $(PROJECT_MODULES_Visual) $(TEMP_PATH_Visual)/Visual.prj
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visual) -fw '$(VCFIRMWAREPATH)' -m $(VCSTPOST) -v V1.00.0 -f '$(TEMP_PATH_Visual)/Visual.prj' -o '$@' -vc '$(VCOBJECT_Visual)' $(DEPENDENCIES_Visual) $(addprefix -d ,$(notdir $(PROJECT_MODULES_Visual:.br=)))

$(AS_CPU_PATH)/Visual01.br: $(TEMP_PATH_Visual)/Visual01.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visual) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visual)' -f '$<' -o '$@' $(DEPENDENCIES_Visual)

$(AS_CPU_PATH)/Visual02.br: $(TEMP_PATH_Visual)/Visual02.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visual) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visual)' -f '$<' -o '$@' $(DEPENDENCIES_Visual)

$(AS_CPU_PATH)/Visual03.br: $(TEMP_PATH_Visual)/Visual03.ccf
	$(MODGEN) -so $(VC_STATIC_OPTIONS_Visual) -fw '$(VCFIRMWAREPATH)' -m $(VCLOD) -v V1.00.0 -b -vc '$(VCOBJECT_Visual)' -f '$<' -o '$@' $(DEPENDENCIES_Visual)

# General Build rules END
$(LIB_LOCAL_OBJ_Visual) : $(TEMP_PATH_Visual)/Visual01.ccf

# Main Module
$(TEMP_PATH_ROOT_Visual)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visual.vcm:
$(TEMP_PATH_Visual)/Visual.prj: $(TEMP_PATH_ROOT_Visual)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visual.vcm
	$(VCDEP) -m '$(TEMP_PATH_ROOT_Visual)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visual.vcm' -s '$(AS_CPU_PATH)/VCShared/Shared.vcm' -p '$(AS_PATH)/AS/VC/Firmware' -c '$(AS_CPU_PATH)' -fw '$(VCFIRMWAREPATH)' -hw '$(CPUHWC)' -so $(VC_STATIC_OPTIONS_Visual) -o Visual -proj Visual
	$(VCPL) $(notdir $(PROJECT_MODULES_Visual:.br=,4)) Visual,2 -o '$@' -p Visual -vc 'Visual' -verbose 'False' -fl '$(TEMP_PATH_ROOT_Visual)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)/VCShared/Visual.vcm' -vcr '$(VCR_SOURCE_Visual)' -prj '$(AS_PROJECT_PATH)' -warningLevel2 -sfas

# 01 Module

DEL_TARGET01_LFL_Visual=$(TEMP_PATH_Visual)\Visual01.ccf.lfl
$(TEMP_PATH_Visual)/Visual01.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Visual) $(TEMP_PATH_Visual)/Visual03.ccf $(LIB_LOCAL_RES_Visual) $(TEMP_PATH_Visual)/Visual02.ccf $(DIS_OBJECTS_Visual) $(PAGE_OBJECTS_Visual) $(VCS_OBJECTS_Visual) $(VCVK_OBJECTS_Visual) $(VCRT_OBJECTS_Visual) $(TPR_OBJECTS_Visual) $(TXTGRP_OBJECTS_Visual) $(LAYER_OBJECTS_Visual) $(VCR_OBJECT_Visual) $(TDC_OBJECTS_Visual) $(TRD_OBJECTS_Visual) $(TRE_OBJECTS_Visual) $(PRC_OBJECTS_Visual) $(SCR_OBJECTS_Visual)
	-@CMD /Q /C if exist "$(DEL_TARGET01_LFL_Visual)" DEL /F /Q "$(DEL_TARGET01_LFL_Visual)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_Visual)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_LOCAL_RES_Visual)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(DIS_OBJECTS_Visual:.vco=.vco|)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .page -vcp '$(AS_PROJECT_PATH)/Logical/VisualSDU/Package.vcp' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCS_OBJECTS_Visual:.vco=.vco|)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .vcvk -vcp '$(AS_PROJECT_PATH)/Logical/VisualSDU/Package.vcp' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCRT_OBJECTS_Visual:.vco=.vco|)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(TPR_OBJECTS_Visual:.vco=.vco|)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .txtgrp -vcp '$(AS_PROJECT_PATH)/Logical/VisualSDU/Package.vcp' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .layer -vcp '$(AS_PROJECT_PATH)/Logical/VisualSDU/Package.vcp' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(VCR_OBJECT_Visual:.vco=.vco|)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .tdc -vcp '$(AS_PROJECT_PATH)/Logical/VisualSDU/Package.vcp' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .trd -vcp '$(AS_PROJECT_PATH)/Logical/VisualSDU/Package.vcp' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(SCR_OBJECTS_Visual:.vco=.vco|)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Visual -lib '$(LIB_LOCAL_OBJ_Visual)' -P '$(AS_PROJECT_PATH)' -m 'local objects' -profile 'False' -warningLevel2 -vcr 4330 -sfas
# 01 Module END

# 02 Module

DEL_TARGET02_LFL_Visual=$(TEMP_PATH_Visual)\Visual02.ccf.lfl
$(TEMP_PATH_Visual)/Visual02.ccf: $(LIB_SHARED) $(SHARED_CCF) $(LIB_BMP_RES_Visual) $(TEMP_PATH_Visual)/Visual03.ccf $(BDR_OBJECTS_Visual) $(LFNT_OBJECTS_Visual) $(CLM_OBJECTS_Visual)
	-@CMD /Q /C if exist "$(DEL_TARGET02_LFL_Visual)" DEL /F /Q "$(DEL_TARGET02_LFL_Visual)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LIB_BMP_RES_Visual)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(BDR_OBJECTS_Visual:.vco=.vco|)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(LFNT_OBJECTS_Visual:.vco=.vco|)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' '$(CLM_OBJECTS_Visual:.vco=.vco|)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Visual -lib '$(LIB_LOCAL_RES_Visual)' -P '$(AS_PROJECT_PATH)' -m 'local resources' -profile 'False' -warningLevel2 -vcr 4330 -sfas
# 02 Module END

# 03 Module

DEL_TARGET03_LFL_Visual=$(TEMP_PATH_Visual)\Visual03.ccf.lfl
$(TEMP_PATH_Visual)/Visual03.ccf: $(LIB_SHARED) $(SHARED_CCF) $(BMGRP_OBJECTS_Visual) $(BMINFO_OBJECTS_Visual) $(PALFILE_Visual)
	-@CMD /Q /C if exist "$(DEL_TARGET03_LFL_Visual)" DEL /F /Q "$(DEL_TARGET03_LFL_Visual)" 2>nul
	@$(VCFLGEN) '$@.lfl' '$(LIB_SHARED)' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bmgrp -vcp '$(AS_PROJECT_PATH)/Logical/VisualSDU/Package.vcp' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	@$(VCFLGEN) '$@.lfl' -mask .bminfo -vcp '$(AS_PROJECT_PATH)/Logical/VisualSDU/Package.vcp' -temp '$(TEMP_PATH_Visual)' -prj '$(PRJ_PATH_Visual)' -sfas
	$(LINK) '$@.lfl' -o '$@' -p Visual -lib '$(LIB_BMP_RES_Visual)' -P '$(AS_PROJECT_PATH)' -m 'bitmap resources' -profile 'False' -warningLevel2 -vcr 4330 -sfas
# 03 Module END

# Post Build Steps

.PHONY : vcPostBuild_Visual

vcPostBuild_Visual :
	$(VCC) -pb -vcm '$(TEMP_PATH_Visual)/MODULEFILES.vcm' -fw '$(VCFIRMWAREPATH)' $(VCCFLAGS_Visual) -p Visual -vcr 4330 -sfas

# Post Build Steps END
