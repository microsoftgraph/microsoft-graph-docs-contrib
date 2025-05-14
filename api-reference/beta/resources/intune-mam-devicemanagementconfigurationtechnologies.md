---
title: "deviceManagementConfigurationTechnologies enum type"
description: "Describes which technology this setting can be deployed with"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationTechnologies enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes which technology this setting can be deployed with

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Setting cannot be deployed through any channel|
|mdm|1|Setting can be deployed through the MDM channel|
|windows10XManagement|2|Setting can be deployed through the Windows10XManagement channel|
|configManager|4|Setting can be deployed through the ConfigManager channel|
|appleRemoteManagement|64|Setting can be deployed through the AppleRemoteManagement channel|
|microsoftSense|128|Setting can be deployed through the SENSE agent channel|
|exchangeOnline|256|Setting can be deployed through the Exchange Online agent channel|
|linuxMdm|1024|Setting can be deployed through the Linux Mdm channel|
|unknownFutureValue|1073741824|Sentinel member for cases where the client cannot handle the new enum values.|
