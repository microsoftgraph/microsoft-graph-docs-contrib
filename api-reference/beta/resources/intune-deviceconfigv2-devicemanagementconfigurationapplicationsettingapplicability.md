---
title: "deviceManagementConfigurationApplicationSettingApplicability resource type"
description: "Applicability for a setting that can be targeted on managed Applications by Intune"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationApplicationSettingApplicability resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Applicability for a setting that can be targeted on managed Applications by Intune


Inherits from [deviceManagementConfigurationSettingApplicability](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingapplicability.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|description of the setting Inherited from [deviceManagementConfigurationSettingApplicability](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingapplicability.md)|
|platform|[deviceManagementConfigurationPlatforms](../resources/intune-deviceconfigv2-devicemanagementconfigurationplatforms.md)|Platform setting can be applied on. Posible values are: none, android, androidEnterprise, iOs, macOs, windows10X, windows10, aosp, and linux. Inherited from [deviceManagementConfigurationSettingApplicability](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingapplicability.md). The possible values are: `none`, `android`, `iOS`, `macOS`, `windows10X`, `windows10`, `linux`, `unknownFutureValue`, `androidEnterprise`, `aosp`, `visionOS`, `tvOS`.|
|deviceMode|[deviceManagementConfigurationDeviceMode](../resources/intune-deviceconfigv2-devicemanagementconfigurationdevicemode.md)|Device Mode that setting can be applied on Inherited from [deviceManagementConfigurationSettingApplicability](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingapplicability.md). The possible values are: `none`, `kiosk`.|
|technologies|[deviceManagementConfigurationTechnologies](../resources/intune-deviceconfigv2-devicemanagementconfigurationtechnologies.md)|Which technology channels this setting can be deployed through. Posible values are: none, mdm, configManager, intuneManagementExtension, thirdParty, documentGateway, appleRemoteManagement, microsoftSense, exchangeOnline, edgeMam, linuxMdm, extensibility, enrollment, endpointPrivilegeManagement. Inherited from [deviceManagementConfigurationSettingApplicability](../resources/intune-deviceconfigv2-devicemanagementconfigurationsettingapplicability.md). The possible values are: `none`, `mdm`, `windows10XManagement`, `configManager`, `appleRemoteManagement`, `microsoftSense`, `exchangeOnline`, `mobileApplicationManagement`, `linuxMdm`, `extensibility`, `enrollment`, `endpointPrivilegeManagement`, `unknownFutureValue`, `windowsOsRecovery`, `android`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceManagementConfigurationApplicationSettingApplicability"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceManagementConfigurationApplicationSettingApplicability",
  "description": "String",
  "platform": "String",
  "deviceMode": "String",
  "technologies": "String"
}
```