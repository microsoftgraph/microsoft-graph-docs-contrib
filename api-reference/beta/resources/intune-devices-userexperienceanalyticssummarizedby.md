---
title: "userExperienceAnalyticsSummarizedBy enum type"
description: "Indicates type of summarization. The possible values are: None, Model, AllRegressions, ModelRegression, ManufacturerRegression, OperatingSystemVersionRegression."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsSummarizedBy enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates type of summarization. The possible values are: None, Model, AllRegressions, ModelRegression, ManufacturerRegression, OperatingSystemVersionRegression.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Indicates that the summarization is none.|
|model|1|Indicates that the summarization is by model.|
|allRegressions|3|Indicates that the summarization is by all regressions.|
|modelRegression|4|Indicates that the summarization is by model regression.|
|manufacturerRegression|5|Indicates that the summarization is by manufacturer regression.|
|operatingSystemVersionRegression|6|Indicates that the summarization is by operating system version regression.|
|unknownFutureValue|7|Evolvable enumeration sentinel value. Do not use.|