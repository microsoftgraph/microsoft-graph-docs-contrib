---
title: "serviceHealth resource type"
description: "Represents the health information of a service."
author: "payiAzure"
ms.localizationpriority: medium
ms.subservice: "service-communications"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# serviceHealth resource type

Namespace: microsoft.graph

Represents the health information of a service subscribed by a tenant.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get service health](../api/servicehealth-get.md)|[serviceHealth](../resources/servicehealth.md)|Retrieve the properties and relationships of a [serviceHealth](../resources/servicehealth.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The service ID.|
|service|String|The service name. Use the [list healthOverviews](../api/serviceannouncement-list-healthoverviews.md) operation to get exact string names for services subscribed by the tenant.|
|status|serviceHealthStatus|Show the overall service health status. Possible values are: `serviceOperational`, `investigating`, `restoringService`, `verifyingService`, `serviceRestored`, `postIncidentReviewPublished`, `serviceDegradation`, `serviceInterruption`, `extendedRecovery`, `falsePositive`, `investigationSuspended`, `resolved`, `mitigatedExternal`, `mitigated`, `resolvedExternal`, `confirmed`, `reported`, `unknownFutureValue`. For more information, see [serviceHealthStatus values](../resources/servicehealthissue.md#servicehealthstatus-values).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|issues|Collection([serviceHealthIssue](../resources/servicehealthissue.md))|A collection of issues that happened on the service, with detailed information for each issue.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceHealth",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceHealth",
  "service": "String",
  "status": "String",
  "id": "String (identifier)"
}
```

