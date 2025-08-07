---
title: "defenderAttackSurfaceType enum type"
description: "Possible values of Defender Attack Surface Reduction Rules"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# defenderAttackSurfaceType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of Defender Attack Surface Reduction Rules

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|Default, which disables attack surface reduction rule.|
|block|1|Enable the attack surface reduction rule.|
|auditMode|2|Evaluate how the ASR rule would impact your organization if enabled. Does not change functionality but generate logs.|
|warn|6|Warning message to end user with ability to bypass block from attack surface reduction rule.|
|disable|99|Disable the attack surface reduction rule|