---
title: "userExperienceAnalyticsSummarizedBy enum type"
description: "Indicates type of summarization. Possible values are: None, Model, AllRegressions, ModelRegression, ManufacturerRegression, OperatingSystemVersionRegression."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsSummarizedBy enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates type of summarization. Possible values are: None, Model, AllRegressions, ModelRegression, ManufacturerRegression, OperatingSystemVersionRegression.

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