---
title: "userExperienceAnalyticsAnomalyCorrelationGroupPrevalence enum type"
description: "Indicates the level of prevalence of the correlation group features in the anomaly. The possible values are: high, medium or low"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsAnomalyCorrelationGroupPrevalence enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the level of prevalence of the correlation group features in the anomaly. The possible values are: high, medium or low

## Members
|Member|Value|Description|
|:---|:---|:---|
|high|0|Indicates that we have a high prevalence in the correlation between the anomaly and correlation group.|
|medium|1|Indicates that we have a medium prevalence in the correlation between the anomaly and correlation group.|
|low|2|Indicates that we have a low prevalence in the correlation between the anomaly and correlation group.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|