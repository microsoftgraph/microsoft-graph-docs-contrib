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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

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