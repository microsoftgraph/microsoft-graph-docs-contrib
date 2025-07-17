---
title: "detectedAppPlatformType enum type"
description: "Indicates the operating system / platform of the discovered application.  Some possible values are Windows, iOS, macOS. The default value is unknown (0)."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# detectedAppPlatformType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the operating system / platform of the discovered application.  Some possible values are Windows, iOS, macOS. The default value is unknown (0).

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Set to unknown when platform cannot be determined.|
|windows|1|Indicates that the platform of the detected application is Windows.|
|windowsMobile|2|Indicates that the platform of the detected application is Windows Mobile.|
|windowsHolographic|3|Indicates that the platform of the detected application is Windows Holographic.|
|ios|4|Indicates that the platform of the detected application is iOS.|
|macOS|5|Indicates that the platform of the detected application is macOS.|
|chromeOS|6|Indicates that the platform of the detected application is ChromeOS.|
|androidOSP|7|Indicates that the platform of the detected application is Android open source project.|
|androidDeviceAdministrator|8|Indicates that the platform of the detected application is Android device administrator.|
|androidWorkProfile|9|Indicates that the platform of the detected application is Android work profile.|
|androidDedicatedAndFullyManaged|10|Indicates that the platform of the detected application is Android dedicated and fully managed.|
|unknownFutureValue|11|Evolvable enumeration sentinel value. Do not use.|