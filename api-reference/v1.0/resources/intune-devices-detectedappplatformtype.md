---
title: "detectedAppPlatformType enum type"
description: "Indicates the operating system / platform of the discovered application.  Some possible values are Windows, iOS, macOS. The default value is unknown (0)."
author: "dougeby"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# detectedAppPlatformType enum type

Namespace: microsoft.graph

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




