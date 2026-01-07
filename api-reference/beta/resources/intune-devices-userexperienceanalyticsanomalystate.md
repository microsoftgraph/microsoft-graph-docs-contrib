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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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