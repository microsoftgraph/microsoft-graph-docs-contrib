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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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