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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes which technology this setting can be deployed with

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default. Indicates the setting cannot be deployed through any channel.|
|mdm|1|Indicates the settings that can be deployed through the Mobile Device Management (MDM) channel.|
|windows10XManagement|2|Indicates the settings that can be deployed through the Windows10XManagement channel.|
|configManager|4|Indicates the settings that can be deployed through the ConfigManager channel.|
|appleRemoteManagement|64|Indicates the settings that can be deployed through the AppleRemoteManagement channel.|
|microsoftSense|128|Indicates the settings that can be deployed through the SENSE agent channel.|
|exchangeOnline|256|Indicates the settings that can be deployed through the Exchange Online agent channel.|
|mobileApplicationManagement|512|Indicates the settings that can be deployed through the Mobile Application Management (MAM) channel.|
|linuxMdm|1024|Indicates the settings that can be deployed through the Linux Mobile Device Management (MDM) channel.|
|extensibility|2048|Indicates the settings that can be deployed through the Extensibility channel.|
|enrollment|4096|Indicates the settings that can be deployed through device enrollment.|
|endpointPrivilegeManagement|8192|Indicates the settings that can be deployed through the Endpoint privilege management channel.|
|unknownFutureValue|16384|Evolvable enumeration sentinel value. Do not use.|
|windowsOsRecovery|32768|Indicates the settings that can be applied during a Windows operating system recovery. Such as accept license, base language, create recovery partition, format disk, keyboard settings.|
|android|65536|Indicates the settings that can be deployed through the Android channel.|