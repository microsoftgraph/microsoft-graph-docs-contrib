---
title: "userExperienceAnalyticsMetricHistory resource type"
description: "The user experience analytics metric history."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# userExperienceAnalyticsMetricHistory resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics metric history.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsMetricHistories](../api/intune-devices-userexperienceanalyticsmetrichistory-list.md)|[userExperienceAnalyticsMetricHistory](../resources/intune-devices-userexperienceanalyticsmetrichistory.md) collection|List properties and relationships of the [userExperienceAnalyticsMetricHistory](../resources/intune-devices-userexperienceanalyticsmetrichistory.md) objects.|
|[Get userExperienceAnalyticsMetricHistory](../api/intune-devices-userexperienceanalyticsmetrichistory-get.md)|[userExperienceAnalyticsMetricHistory](../resources/intune-devices-userexperienceanalyticsmetrichistory.md)|Read properties and relationships of the [userExperienceAnalyticsMetricHistory](../resources/intune-devices-userexperienceanalyticsmetrichistory.md) object.|
|[Create userExperienceAnalyticsMetricHistory](../api/intune-devices-userexperienceanalyticsmetrichistory-create.md)|[userExperienceAnalyticsMetricHistory](../resources/intune-devices-userexperienceanalyticsmetrichistory.md)|Create a new [userExperienceAnalyticsMetricHistory](../resources/intune-devices-userexperienceanalyticsmetrichistory.md) object.|
|[Delete userExperienceAnalyticsMetricHistory](../api/intune-devices-userexperienceanalyticsmetrichistory-delete.md)|None|Deletes a [userExperienceAnalyticsMetricHistory](../resources/intune-devices-userexperienceanalyticsmetrichistory.md).|
|[Update userExperienceAnalyticsMetricHistory](../api/intune-devices-userexperienceanalyticsmetrichistory-update.md)|[userExperienceAnalyticsMetricHistory](../resources/intune-devices-userexperienceanalyticsmetrichistory.md)|Update the properties of a [userExperienceAnalyticsMetricHistory](../resources/intune-devices-userexperienceanalyticsmetrichistory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics metric history.|
|deviceId|String|The Intune device id of the device.|
|metricDateTime|DateTimeOffset|The metric date time. The value cannot be modified and is automatically populated when the metric is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Returned by default.|
|metricType|String|The user experience analytics metric type.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|userExperienceAnalyticsMetric|[userExperienceAnalyticsMetric](../resources/intune-devices-userexperienceanalyticsmetric.md)|User experience analytics metric.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsMetricHistory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsMetricHistory",
  "id": "String (identifier)",
  "deviceId": "String",
  "metricDateTime": "String (timestamp)",
  "metricType": "String"
}
```
