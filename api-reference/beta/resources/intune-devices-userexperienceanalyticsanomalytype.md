---
title: "userExperienceAnalyticsAnomalyType enum type"
description: "Indicates the category of the anomaly. Eg: anomaly type can be device, application, stop error, driver or other."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsAnomalyType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

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