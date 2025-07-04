---
title: "userExperienceAnalyticsAnomalyDeviceFeatureType enum type"
description: "Indicates the device's feature type. Possible values are: manufacturer, model, osVersion, application or driver."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsAnomalyDeviceFeatureType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the device's feature type. Possible values are: manufacturer, model, osVersion, application or driver.

## Members
|Member|Value|Description|
|:---|:---|:---|
|manufacturer|0|Indicates the manufacturer name as device feature type.|
|model|1|Indicates the model as a device feature type.|
|osVersion|2|Indicates the OS as a device feature type.|
|application|3|Indicates the application as a device feature type.|
|driver|4|Indicates the driver as a device feature type.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|