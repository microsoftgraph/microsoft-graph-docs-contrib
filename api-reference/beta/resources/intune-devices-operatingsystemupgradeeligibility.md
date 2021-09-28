---
title: "operatingSystemUpgradeEligibility enum type"
description: "Work From Anywhere windows device upgrade eligibility status"
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: enumPageType
---

# operatingSystemUpgradeEligibility enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Work From Anywhere windows device upgrade eligibility status

## Members
|Member|Value|Description|
|:---|:---|:---|
|upgraded|0|The device is upgraded to latest version of windows|
|unknown|1|Not enough data available to compute the eligibility of device for windows upgrade|
|notCapable|2|The device is not capable for windows upgrade|
|capable|3|The device is capable for windows upgrade|



