---
title: "windowsQualityUpdateCadence enum type"
description: "The publishing cadence of the quality update. The possible values are: monthly, outOfBand. This property cannot be modified and is automatically populated when the catalog is created."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsQualityUpdateCadence enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The publishing cadence of the quality update. The possible values are: monthly, outOfBand. This property cannot be modified and is automatically populated when the catalog is created.

## Members
|Member|Value|Description|
|:---|:---|:---|
|monthly|0|Default. Indicates the quality update is released in a regular monthly pattern.|
|outOfBand|1|Indicates the quality update is released in an out-of-band pattern.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|