---
title: "userExperienceAnalyticsDeviceStatus enum type"
description: "Indicates the status of the device in the correlation group. Eg: Device status can be anomalous, affected, at risk."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# userExperienceAnalyticsDeviceStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the status of the device in the correlation group. Eg: Device status can be anomalous, affected, at risk.

## Members
|Member|Value|Description|
|:---|:---|:---|
|anomalous|0|Indicates the the device is part of the anomaly.|
|affected|1|Indicates the device is affected by the anomaly and is part of the correlation group.|
|atRisk|2|Indicates the device is not part of the anomaly but is part of the correlation group.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|
