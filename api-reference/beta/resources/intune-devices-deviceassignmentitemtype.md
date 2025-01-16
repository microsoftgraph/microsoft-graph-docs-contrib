---
title: "deviceAssignmentItemType enum type"
description: "A list of possible device assignment item types to execute this action on the managed device. Device assignment item represents existing assigned Intune resource such as application or configuration. Currently supported device assignment item types are Application, DeviceConfiguration, DeviceManagementConfigurationPolicy and MobileAppConfiguration"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 09/12/2024
---

# deviceAssignmentItemType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of possible device assignment item types to execute this action on the managed device. Device assignment item represents existing assigned Intune resource such as application or configuration. Currently supported device assignment item types are Application, DeviceConfiguration, DeviceManagementConfigurationPolicy and MobileAppConfiguration

## Members
|Member|Value|Description|
|:---|:---|:---|
|application|0|Default. Indicates that the device assignment item type for the action is graph.mobileApp. Application is uninstalled on removal and installed back on restoration|
|deviceConfiguration|1|Indicates that the device assignment item type for the action is graph.deviceConfiguration. DeviceConfiguration associated settings are removed on removal and added back on restoration|
|deviceManagementConfigurationPolicy|2|Indicates that the device assignment item type for the action is graph.deviceManagementConfigurationPolicy. DeviceManagementConfigurationPolicy associated settings are removed on removal and added back on restoration|
|mobileAppConfiguration|3|Indicates that the device assignment item type for the action is `graph.managedDeviceMobileAppConfiguration`. MobileAppConfiguration associated settings are removed on removal and added back on restoration|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use|
