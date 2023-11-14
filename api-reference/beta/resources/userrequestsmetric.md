---
title: "userRequestsMetric resource type"
description: "Represents insights for all user requests on apps registered in your Microsoft Entra External ID for customers tenant for a specific period."
author: "srutto"
ms.localizationpriority: medium
ms.prod: "identity-and-access-reports"
doc_type: resourcePageType
---

# userRequestsMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents insights for all user requests on apps registered in your Microsoft Entra External ID for customers tenant for a specific period. This involves all requests including authentication requests, signup requests, mfa requests etc.
The user requests here are aggregated as is with no filtering. The value returned might not reflect the most updated numbers.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userRequests](../api/monthlyuserinsightmetricsroot-list-requests.md)| [userRequests](../resources/userrequestsmetric.md) collection|Get a list of the [userRequests](../resources/userrequestsmetric.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|factDate|Date|The date of the user insight.|
|id|String|Identifier for the user insight.|
|requestCount|Int64|Number of requests that came to the tenant. Supports `$filter` (`eq`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userRequestsMetric",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userRequestsMetric",
  "factDate": "String (date)",
  "id": "String (identifier)",
  "requestCount": "Int64"
}
```
