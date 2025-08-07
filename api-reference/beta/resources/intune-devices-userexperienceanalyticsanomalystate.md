---
title: "userExperienceAnalyticsAnomalyState enum type"
description: "Indicates the state of the anomaly. Eg: anomaly severity can be new, active, disabled, removed or other."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsAnomalyState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the state of the anomaly. Eg: anomaly severity can be new, active, disabled, removed or other.

## Members
|Member|Value|Description|
|:---|:---|:---|
|new|0|Indicates the state of anomaly is new.|
|active|1|Indicates the state of anomaly is active.|
|disabled|2|Indicates the state of anomaly is disabled.|
|removed|3|Indicates the state of anomaly is removed.|
|other|4|Indicates the state of anomaly is undefined.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|