---
title: "userExperienceAnalyticsDeviceStatus enum type"
description: "Indicates the status of the device in the correlation group. Eg: Device status can be anomalous, affected, at risk."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsDeviceStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the status of the device in the correlation group. Eg: Device status can be anomalous, affected, at risk.

## Members
|Member|Value|Description|
|:---|:---|:---|
|anomalous|0|Indicates the the device is part of the anomaly.|
|affected|1|Indicates the device is affected by the anomaly and is part of the correlation group.|
|atRisk|2|Indicates the device is not part of the anomaly but is part of the correlation group.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|