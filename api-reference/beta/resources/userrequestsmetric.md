---
title: "userRequestsMetric resource type"
description: "Represents daily and monthly insights on all user requests for apps registered in your tenant that is configured for Microsoft Entra External ID for customers."
author: "srutto"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# userRequestsMetric resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents daily and monthly insights on all user requests for apps registered in your tenant that is configured for Microsoft Entra External ID for customers, including all requests such as authentication requests, sign-up requests, and MFA requests. The user requests are aggregated without no filtering. 

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List daily requests](../api/dailyuserinsightmetricsroot-list-requests.md)| [userRequestsMetric](../resources/userrequestsmetric.md) collection|Get a list of daily [user requests](../resources/userrequestsmetric.md) on apps registered in your tenant configured for Microsoft Entra External ID for customers.|
|[List monthly requests](../api/monthlyuserinsightmetricsroot-list-requests.md)| [userRequestsMetric](../resources/userrequestsmetric.md) collection|Get a list of monthly [user requests](../resources/userrequestsmetric.md) on apps registered in your tenant configured for Microsoft Entra External ID for customers.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|factDate|Date|The date of the user insight.|
|id|String|Identifier for the user insight. Inherited from [entity](../resources/entity.md).|
|requestCount|Int64|Number of requests to the tenant. Supports `$filter` (`eq`).|

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
