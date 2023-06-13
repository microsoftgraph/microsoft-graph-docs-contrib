---
title: "userExperienceAnalyticsAnomalyType enum type"
description: "Indicates the category of the anomaly. Eg: anomaly type can be device, application, stop error, driver or other."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# userExperienceAnalyticsAnomalyType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the category of the anomaly. Eg: anomaly type can be device, application, stop error, driver or other.

## Members
|Member|Value|Description|
|:---|:---|:---|
|device|0|Indicates the detected anomaly is due to certain devices.|
|application|1|Indicates the detected anomaly is due to a specific application.|
|stopError|2|Indicates the detected anomaly is due to a specific stop error.|
|driver|3|Indicates the detected anomaly is due to a specific driver.|
|other|4|Indicates the category of detected anomaly is undefined.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|
