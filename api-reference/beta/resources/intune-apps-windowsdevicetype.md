---
title: "windowsDeviceType enum type"
description: "Contains properties for Windows device type. Multiple values can be selected. Default value is `none`."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsDeviceType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for Windows device type. Multiple values can be selected. Default value is `none`.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No device types supported. Default value.|
|desktop|1|Indicates support for Desktop Windows device type.|
|mobile|2|Indicates support for Mobile Windows device type.|
|holographic|4|Indicates support for Holographic Windows device type.|
|team|8|Indicates support for Team Windows device type.|
|unknownFutureValue|16|Evolvable enumeration sentinel value. Do not use.|