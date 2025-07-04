---
title: "deviceManagementScriptRunState enum type"
description: "Indicates the type of execution status of the device management script. This status provides insights into whether the script has been successfully executed, encountered errors, or is pending execution."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementScriptRunState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of execution status of the device management script. This status provides insights into whether the script has been successfully executed, encountered errors, or is pending execution.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default value. Indicates that the script execution status is unknown for the device.|
|success|1|Indicates that the script ran successfully for the device.|
|fail|2|Indicates that the script resulted in failure for the device.|
|scriptError|3|Indicates that the discovery script was unable to complete on the device.|
|pending|4|Indicates that the script has not yet started running on the device.|
|notApplicable|5|Indicates that the script is not applicable for this device.|
|unknownFutureValue|6|Evolvable enumeration sentinel value. Do not use.|