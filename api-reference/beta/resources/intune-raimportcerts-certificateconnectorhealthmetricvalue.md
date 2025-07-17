---
title: "certificateConnectorHealthMetricValue resource type"
description: "Metric snapshot value returned in response to a GetHealthMetricTimeSeries request."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# certificateConnectorHealthMetricValue resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Metric snapshot value returned in response to a GetHealthMetricTimeSeries request.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dateTime|DateTimeOffset|Timestamp for this metric data-point.|
|successCount|Int64|Count of successful requests/operations.|
|failureCount|Int64|Count of failed requests/operations.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.certificateConnectorHealthMetricValue"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.certificateConnectorHealthMetricValue",
  "dateTime": "String (timestamp)",
  "successCount": 1024,
  "failureCount": 1024
}
```