---
title: "userExperienceAnalyticsWorkFromAnywhereMetric resource type"
description: "The user experience analytics metric for work from anywhere report."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsWorkFromAnywhereMetric resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics metric for work from anywhere report.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsWorkFromAnywhereMetrics](../api/intune-devices-userexperienceanalyticsworkfromanywheremetric-list.md)|[userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md) collection|List properties and relationships of the [userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md) objects.|
|[Get userExperienceAnalyticsWorkFromAnywhereMetric](../api/intune-devices-userexperienceanalyticsworkfromanywheremetric-get.md)|[userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md)|Read properties and relationships of the [userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md) object.|
|[Create userExperienceAnalyticsWorkFromAnywhereMetric](../api/intune-devices-userexperienceanalyticsworkfromanywheremetric-create.md)|[userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md)|Create a new [userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md) object.|
|[Delete userExperienceAnalyticsWorkFromAnywhereMetric](../api/intune-devices-userexperienceanalyticsworkfromanywheremetric-delete.md)|None|Deletes a [userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md).|
|[Update userExperienceAnalyticsWorkFromAnywhereMetric](../api/intune-devices-userexperienceanalyticsworkfromanywheremetric-update.md)|[userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md)|Update the properties of a [userExperienceAnalyticsWorkFromAnywhereMetric](../resources/intune-devices-userexperienceanalyticsworkfromanywheremetric.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics work from anywhere metric. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|metricDevices|[userExperienceAnalyticsWorkFromAnywhereDevice](../resources/intune-devices-userexperienceanalyticsworkfromanywheredevice.md) collection|The work from anywhere metric devices. Read-only.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsWorkFromAnywhereMetric"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsWorkFromAnywhereMetric",
  "id": "String (identifier)"
}
```
