---
title: "serviceHealth resource type"
description: "Represents the health information of a service."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service communications"
doc_type: resourcePageType
---

# serviceHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the health information of a service.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List serviceHealths](../api/servicehealth-list.md)|[serviceHealth](../resources/servicehealth.md) collection|List the service health information on all services of the tenant|
|[Get serviceHealth](../api/servicehealth-get.md)|[serviceHealth](../resources/servicehealth.md)|Get the service health information of a specified service for the tenant|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The service id|
|service|String|The service name|
|status|serviceHealthStatus|Show the overral service health status. Possible values are: `ServiceOperational`, `Investigating`, `RestoringService`, `VerifyingService`, `ServiceRestored`, `PostIncidentReviewPublished`, `ServiceDegradation`, `ServiceInterruption`, `ExtendedRecovery`, `FalsePositive`, `InvestigationSuspended`, `Resolved`, `MitigatedExternal`, `Mitigated`, `ResolvedExternal`, `Confirmed`, `Reported`, `UnknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|issues|[serviceHealthIssue](../resources/servicehealthissue.md) collection|Show a collection is issues happened on the service, with detailed information for each issue.|

## JSON representation
The following is a JSON representation of the resource.
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

