---
title: "windowsQualityUpdateCadence enum type"
description: "The publishing cadence of the quality update. Possible values are: monthly, outOfBand. This property cannot be modified and is automatically populated when the catalog is created."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsQualityUpdateCadence enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The publishing cadence of the quality update. Possible values are: monthly, outOfBand. This property cannot be modified and is automatically populated when the catalog is created.

## Members
|Member|Value|Description|
|:---|:---|:---|
|monthly|0|Default. Indicates the quality update is released in a regular monthly pattern.|
|outOfBand|1|Indicates the quality update is released in an out-of-band pattern.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|