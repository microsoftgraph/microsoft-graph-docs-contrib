---
title: "deviceActionPayloadType enum type"
description: "A list of possible payload types to execute this action on the managed device. Payload represents existing Intune resource such as policy or app. Currently supported payload types are Application, DeviceConfiguration and DeviceManagementConfigurationPolicy"
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# deviceActionPayloadType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of possible payload types to execute this action on the managed device. Payload represents existing Intune resource such as policy or app. Currently supported payload types are Application, DeviceConfiguration and DeviceManagementConfigurationPolicy

## Members
|Member|Value|Description|
|:---|:---|:---|
|application|0|Default. Indicates that the payload type for the action is graph.mobileApp. Application is uninstalled on removal and installed back on restoration|
|deviceConfiguration|1|Indicates that the payload type for the action is graph.deviceConfiguration. DeviceConfiguration corresponding settings are removed on removal and added back on restoration|
|deviceManagementConfigurationPolicy|2|Indicates that the payload type for the action is graph.deviceManagementConfigurationPolicy. DeviceManagementConfigurationPolicy corresponding settings are removed on removal and added back on restoration|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use|
