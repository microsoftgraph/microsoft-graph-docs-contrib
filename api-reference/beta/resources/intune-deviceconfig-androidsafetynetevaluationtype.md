---
title: "androidSafetyNetEvaluationType enum type"
description: "An enum representing the Android Play Integrity API evaluation types."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidSafetyNetEvaluationType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum representing the Android Play Integrity API evaluation types.

## Members
|Member|Value|Description|
|:---|:---|:---|
|basic|0|Default value. Typical measurements and reference data were used.|
|hardwareBacked|1|Strong Integrity checks (such as a hardware-backed proof of boot integrity) were used.|