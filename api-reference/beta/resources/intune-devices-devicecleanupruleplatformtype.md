---
title: "deviceCleanupRulePlatformType enum type"
description: "Define the platform type for which the admin wants to create the device clean up rule"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceCleanupRulePlatformType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Define the platform type for which the admin wants to create the device clean up rule

## Members
|Member|Value|Description|
|:---|:---|:---|
|all|0|Default. Indicates that clean up rule is associated with all managed device platform.|
|androidAOSP|1|Indicates that clean up rule is associated with Android open source project managed device platform.|
|androidDeviceAdministrator|2|Indicates that clean up rule is associated with Android device administrator managed device platform.|
|androidDedicatedAndFullyManagedCorporateOwnedWorkProfile|3|Indicates that clean up rule is associated with Android dedicated and fully managed and Corporate Owned Work Profile managed device platform.|
|chromeOS|4|Indicates that clean up rule is associated with ChromeOS managed device platform.|
|androidPersonallyOwnedWorkProfile|5|Indicates that clean up rule is associated with Android personally owned work profile managed device platform.|
|ios|6|Indicates that clean up rule is associated with IOS managed device platform.|
|macOS|7|Indicates that clean up rule is associated with MacOS managed device platform.|
|windows|8|Indicates that clean up rule is associated with Windows managed device platform.|
|windowsHolographic|9|Indicates that clean up rule is associated with Windows Holographic managed device platform.|
|unknownFutureValue|10|Evolvable enumeration sentinel value. Do not use.|
|visionOS|11|Indicates that clean up rule is associated with visionOS managed device platform.|
|tvOS|12|Indicates that clean up rule is associated with tvOS managed device platform.|