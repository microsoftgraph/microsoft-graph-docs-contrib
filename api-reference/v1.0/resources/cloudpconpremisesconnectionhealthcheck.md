---
title: "cloudPcOnPremisesConnectionHealthCheck resource type"
description: "The result of a Cloud PC Azure network connection health check."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# cloudPcOnPremisesConnectionHealthCheck resource type

Namespace: microsoft.graph

The result of a Cloud PC Azure network connection health check.

[!INCLUDE [on-premise-rename-note](../../includes/on-premise-rename-note.md)]

## Properties

|Property|Type|Description|
|:---|:---|:---|
|additionalDetail|String|Additional details about the health check or the recommended action. For exmaple, the string value can be download.microsoft.com:443;software-download.microsoft.com:443; Read-only.|
|correlationId|String|The unique identifier of the health check item-related activities. This identifier can be useful in troubleshooting.|
|displayName|String|The display name for this health check item.|
|endDateTime|DateTimeOffset|The value cannot be modified and is automatically populated when the health check ends. The Timestamp type represents date and time information using ISO 8601 format and is in Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2024 would look like this: '2024-01-01T00:00:00Z'. Returned by default. Read-only.|
|errorType|[cloudPcOnPremisesConnectionHealthCheckErrorType](../resources/cloudpconpremisesconnectionhealthcheckerrortype.md)|The type of error that occurred during this health check. Read-only.|
|recommendedAction|String|The recommended action to fix the corresponding error. For example, The Active Directory domain join check failed because the password of the domain join user has expired. Read-Only.|
|startDateTime|DateTimeOffset|The value cannot be modified and is automatically populated when the health check starts. The Timestamp type represents date and time information using ISO 8601 format and is in  Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2024 would look like this: '2024-01-01T00:00:00Z'. Returned by default. Read-only.|
|status|[cloudPcOnPremisesConnectionStatus](../resources/cloudpconpremisesconnection.md#cloudpconpremisesconnectionstatus-values)|The status of the health check item. The possible values are: `pending`, `running`, `passed`, `failed`, `warning`, `informational`, `unknownFutureValue`. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcOnPremisesConnectionHealthCheck"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcOnPremisesConnectionHealthCheck",
  "displayName": "String",
  "status": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "errorType": "String",
  "recommendedAction": "String",
  "additionalDetail": "String",
  "correlationId": "String"
}
```
