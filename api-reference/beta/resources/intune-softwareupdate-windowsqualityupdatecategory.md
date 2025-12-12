---
title: "windowsQualityUpdateCategory enum type"
description: "Windows quality update category"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsQualityUpdateCategory enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows quality update category

## Members
|Member|Value|Description|
|:---|:---|:---|
|all|0|All update type|
|security|1|Security only update type|
|nonSecurity|2|Non security only update type|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|
|quickMachineRecovery|4|Quick machine recovery update type|