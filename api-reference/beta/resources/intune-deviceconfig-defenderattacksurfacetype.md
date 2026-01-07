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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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