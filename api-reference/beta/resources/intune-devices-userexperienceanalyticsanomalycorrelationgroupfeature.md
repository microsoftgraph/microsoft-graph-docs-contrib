---
title: "userExperienceAnalyticsAnomalyCorrelationGroupFeature resource type"
description: "Describes the features of a device that are shared between all devices in a correlation group."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsAnomalyCorrelationGroupFeature resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes the features of a device that are shared between all devices in a correlation group.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceFeatureType|[userExperienceAnalyticsAnomalyDeviceFeatureType](../resources/intune-devices-userexperienceanalyticsanomalydevicefeaturetype.md)|The type of device feature. Possible values are: manufacturer, model, osVersion, application or driver. Possible values are: `manufacturer`, `model`, `osVersion`, `application`, `driver`, `unknownFutureValue`.|
|values|String collection|Specific metric values that describe the features of the given device feature type.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAnomalyCorrelationGroupFeature"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAnomalyCorrelationGroupFeature",
  "deviceFeatureType": "String",
  "values": [
    "String"
  ]
}
```