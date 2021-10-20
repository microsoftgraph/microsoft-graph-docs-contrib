---
title: "metricTimeSeriesDataPoint resource type"
description: "Metric Time series data point"
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: resourcePageType
---

# metricTimeSeriesDataPoint resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Metric Time series data point

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dateTime|DateTimeOffset|Time of the metric time series data point|
|value|Int64|Value of the metric time series data point|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.metricTimeSeriesDataPoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.metricTimeSeriesDataPoint",
  "dateTime": "String (timestamp)",
  "value": 1024
}
```



