---
title: "deviceCleanupRulePlatformType enum type"
description: "Define the platform type for which the admin wants to create the device clean up rule"
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# deviceCleanupRulePlatformType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Define the platform type for which the admin wants to create the device clean up rule

## Members
|Member|Value|Description|
|:---|:---|:---|
|all|0|Default. Indicates that clean up rule is associated with all managed device platforms.|
|androidAOSP|1|Indicates that clean up rule is associated with Android open source project managed device platforms.|
|androidDeviceAdministrator|2|Indicates that clean up rule is associated with Android device administrator managed device platforms.|
|androidDedicatedAndFullyManagedCorporateOwnedWorkProfile|3|Indicates that clean up rule is associated with Android dedicated and fully managed and Corporate Owned Work Profile managed device platforms.|
|chromeOS|4|Indicates that clean up rule is associated with ChromeOS managed device platforms.|
|androidPersonallyOwnedWorkProfile|5|Indicates that clean up rule is associated with Android personally owned work profile managed device platforms.|
|ios|6|Indicates that clean up rule is associated with IOS managed device platforms.|
|macOS|7|Indicates that clean up rule is associated with MacOS managed device platforms.|
|windows|8|Indicates that clean up rule is associated with Windows managed device platforms.|
|windowsHolographic|9|Indicates that clean up rule is associated with Windows Holographic managed device platforms.|
|unknownFutureValue|10|Evolvable enumeration sentinel value. Do not use.|