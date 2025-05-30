---
title: "devicePlatformType enum type"
description: "Supported platform types."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# devicePlatformType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported platform types.

## Members
|Member|Value|Description|
|:---|:---|:---|
|android|0|Indicates device platform type is android.|
|androidForWork|1|Indicates device platform type is android for work.|
|iOS|2|Indicates device platform type is iOS.|
|macOS|3|Indicates device platform type is macOS.|
|windowsPhone81|4|Indicates device platform type is WindowsPhone 8.1.|
|windows81AndLater|5|Indicates device platform type is Windows 8.1 and later.|
|windows10AndLater|6|Indicates device platform type is Windows 10 and later.|
|androidWorkProfile|7|Indicates device platform type is Android Work Profile.|
|unknown|8|This is the default value when device platform type resolution fails|
|androidAOSP|9|Indicates device platform type is Android AOSP.|
|androidMobileApplicationManagement|10|Indicates device platform type associated with Mobile Application Management (MAM) for android devices.|
|iOSMobileApplicationManagement|11|Indicates device platform type associated with Mobile Application Management (MAM) for iOS devices.|
|unknownFutureValue|12|Evolvable enumeration sentinel value. Do not use.|
|windowsMobileApplicationManagement|13|Indicates device platform type associated with Mobile Application Management (MAM) for Windows devices.|