---
title: "deviceManagementConfigurationStringFormat enum type"
description: "Intune Deviceconfigv2 Devicemanagementconfigurationstringformat Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementConfigurationStringFormat enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Indicates a string with no well-defined format expected.|
|email|1|Indicates a string that is expected to be a valid email address.|
|guid|2|Indicates a string that is expected to be a valid GUID.|
|ip|3|Indicates a string that is expected to be a valid IP address.|
|base64|4|Indicates a string that is base64 encoded.|
|url|5|Indicates a string that is expected to be a valid URL.|
|version|6|Indicates a string that should refer to a version.|
|xml|7|Indicates a string that is expected to be a valid XML.|
|date|8|Indicates a string that is expected to be a valid date.|
|time|9|Indicates a string that is expected to be a valid time.|
|binary|10||
|regEx|11|Indicates a string that is expected to be a valid Regex string.|
|json|12|Indicates a string that is expected to be a valid JSON string.|
|dateTime|13|Indicates a string that is expected to be a valid Datetime.|
|surfaceHub|14|Indicates a Windows SKU applicability value that maps to Intune.|
|bashScript|19|String whose value is a bash script|
|unknownFutureValue|20|Sentinel member for cases where the client cannot handle the new enum values.|