---
title: "managementAgentType enum type"
description: "Management agent type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managementAgentType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Management agent type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|eas|1|The device is managed by Exchange server.|
|mdm|2|The device is managed by Intune MDM.|
|easMdm|3|The device is managed by both Exchange server and Intune MDM.|
|intuneClient|4|Intune client managed.|
|easIntuneClient|5|The device is EAS and Intune client dual managed.|
|configurationManagerClient|8|The device is managed by Configuration Manager.|
|configurationManagerClientMdm|10|The device is managed by Configuration Manager and MDM.|
|configurationManagerClientMdmEas|11|The device is managed by Configuration Manager, MDM and Eas.|
|unknown|16|Unknown management agent type.|
|jamf|32|The device attributes are fetched from Jamf.|
|googleCloudDevicePolicyController|64|The device is managed by Google's CloudDPC.|
|microsoft365ManagedMdm|258|This device is managed by Microsoft 365 through Intune.|
|msSense|1024|This device is managed by Microsoft Defender for Endpoint.|
|intuneAosp|2048|This device is managed by Intune's MDM for AOSP (Android Open Source Project) devices|
|google|8192|Indicates the management agent to manage the device is Google.|
|unknownFutureValue|8193|Evolvable enumeration sentinel value. Do not use.|