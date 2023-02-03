---
title: "deviceManagementConfigurationTechnologies enum type"
description: "Describes which technology this setting can be deployed with"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# deviceManagementConfigurationTechnologies enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
|enrollment|4096|Setting can be deployed through device enrollment.|
|endpointPrivilegeManagement|8192|Setting can be deployed using the Endpoint privilege management channel|
|unknownFutureValue|16384|Evolvable enumeration sentinel value. Do not use.|
