---
title: "timeSeriesParameter resource type"
description: "Parameter passed to GetHealthMetricTimeSeries when requesting snapshot time series."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# timeSeriesParameter resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Parameter passed to GetHealthMetricTimeSeries when requesting snapshot time series.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|metricName|String|The name of the metric for which a time series is requested.|
|startDateTime|DateTimeOffset|Start time of the series being requested.|
|endDateTime|DateTimeOffset|End time of the series being requested. Optional; if not specified, current time is used.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.timeSeriesParameter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.timeSeriesParameter",
  "metricName": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)"
}
```