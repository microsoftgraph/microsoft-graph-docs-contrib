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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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