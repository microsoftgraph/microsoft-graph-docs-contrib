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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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