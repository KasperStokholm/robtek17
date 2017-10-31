<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio Version=4.3.3.196?>
<SwConfiguration CpuAddress="SL1" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1" />
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="RunningLig" Source="RunningLights.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <VcDataObjects>
    <VcDataObject Name="Visual" Source="VisualSDU.dob" Memory="UserROM" Language="Vc" WarningLevel="2" Compress="false" />
  </VcDataObjects>
  <Libraries>
    <LibraryObject Name="standard" Source="Libraries.standard.lby" Memory="UserROM" Language="Binary" Debugging="true" />
  </Libraries>
</SwConfiguration>