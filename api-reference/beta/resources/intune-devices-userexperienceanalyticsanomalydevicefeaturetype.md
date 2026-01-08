---
title: "userExperienceAnalyticsAnomalyDeviceFeatureType enum type"
description: "Indicates the device's feature type. The possible values are: manufacturer, model, osVersion, application or driver."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsAnomalyDeviceFeatureType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the device's feature type. The possible values are: manufacturer, model, osVersion, application or driver.

## Members
|Member|Value|Description|
|:---|:---|:---|
|manufacturer|0|Indicates the manufacturer name as device feature type.|
|model|1|Indicates the model as a device feature type.|
|osVersion|2|Indicates the OS as a device feature type.|
|application|3|Indicates the application as a device feature type.|
|driver|4|Indicates the driver as a device feature type.|
|unknownFutureValue|5|Evolvable enumeration sentinel value. Do not use.|