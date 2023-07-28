---
title: "userExperienceAnalyticsOperatingSystemRestartCategory enum type"
description: "Operating System restart category."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# userExperienceAnalyticsOperatingSystemRestartCategory enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Operating System restart category.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Set to unknown if device operating system restart category has not yet been calculated.|
|restartWithUpdate|1|Indicates that the device operating system restart is along with an update.|
|restartWithoutUpdate|2|Indicates that the device operating system restart is without update.|
|blueScreen|3|Indicates that the device operating system restart is due to a specific stop error.|
|shutdownWithUpdate|4|Indicates that the device operating system restart is due to shutdown with update.|
|shutdownWithoutUpdate|5|Indicates that the device operating system restart is due to shutdown without update.|
|longPowerButtonPress|6|Indicates that the device operating system restart is due to update long power-button press.|
|bootError|7|Indicates that the device operating system restart is due to boot error.|
|update|8|Indicates that the device operating system restarted after an update.|
|unknownFutureValue|9|Evolvable enumeration sentinel value. Do not use.|
