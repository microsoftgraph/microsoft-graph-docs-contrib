---
title: "operatingSystemUpgradeEligibility enum type"
description: "Work From Anywhere windows device upgrade eligibility status."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# operatingSystemUpgradeEligibility enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Work From Anywhere windows device upgrade eligibility status.

## Members
|Member|Value|Description|
|:---|:---|:---|
|upgraded|0|The device is upgraded to latest version of windows.|
|unknown|1|Not enough data available to compute the eligibility of device for windows upgrade.|
|notCapable|2|The device is not capable for windows upgrade.|
|capable|3|The device is capable for windows upgrade.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|
