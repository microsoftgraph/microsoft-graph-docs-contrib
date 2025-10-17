---
title: "defenderCloudBlockLevelType enum type"
description: "Possible values of Cloud Block Level"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# defenderCloudBlockLevelType enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of Cloud Block Level

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Default value, uses the default Windows Defender Antivirus blocking level and provides strong detection without increasing the risk of detecting legitimate files|
|high|1|High applies a strong level of detection.|
|highPlus|2|High + uses the High level and applies addition protection measures|
|zeroTolerance|3|Zero tolerance blocks all unknown executables|