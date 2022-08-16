---
title: "cloudPcConnectivityEvent resource type"
description: "Describes a user connection record, including when and how the Cloud PC was connected and whether the connection was successful. "
author: "yayang3"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcConnectivityEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a user connection record, including when and how the Cloud PC was connected and whether the connection was successful. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|eventDateTime|DateTimeOffset|Indicates the date and time when this event was created. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appears as `2014-01-01T00:00:00Z`.|
|eventName|string|Name of the event.|
|eventResult|[cloudPcConnectivityEventResult](#cloudpcconnectivityeventresult-values)|Result of this event. Possible values are: `unknown`, `success`, `failure`, and `unknownFutureValue`.|
|eventType|[cloudPcConnectivityEventType](#cloudpcconnectivityeventtype-values)|Type of this event. Possible values are: `unknown`, `userConnection`, `userTroubleshooting`, `deviceHealthCheck`, and `unknownFutureValue`.|
|message|string|Additional message for this event.|

### cloudPcConnectivityEventResult values

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|The event result is unknown.|
|success|1|The event result is success.|
|failure|2|The event result is failure.|
|unknownFutureValue|999|Evolvable enumeration sentinel value. Do not use.|

### cloudPcConnectivityEventType values

|Member|Value|Description|
|:---|:---|:---|
|unknown|0|The event type is unknown.|
|userConnection|1|The event comes from user connecting to Cloud PC.|
|userTroubleshooting|2|The event comes from user's troubleshooting action.|
|deviceHealthCheck|3|The event comes from service's regular device health check.|
|unknownFutureValue|999|Evolvable enumeration sentinel value. Do not use.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcConnectivityEvent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcConnectivityEvent",
  "eventDateTime": "String (timestamp)",
  "eventName": "String",
  "eventResult": "String",
  "eventType": "String",
  "message": "String"
}
```
