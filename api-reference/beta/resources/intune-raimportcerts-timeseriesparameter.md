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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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