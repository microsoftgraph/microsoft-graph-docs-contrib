---
title: "windowsArchitecture enum type"
description: "Contains properties for Windows architecture."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsArchitecture enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties for Windows architecture.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No flags set.|
|x86|1|Whether or not the X86 Windows architecture type is supported.|
|x64|2|Whether or not the X64 Windows architecture type is supported.|
|arm|4|Whether or not the Arm Windows architecture type is supported.|
|neutral|8|Whether or not the Neutral Windows architecture type is supported.|
|arm64|16|Whether or not the Arm64 Windows architecture type is supported.|