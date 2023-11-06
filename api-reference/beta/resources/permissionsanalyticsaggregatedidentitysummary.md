---
title: "permissionsAnalyticsAggregatedIdentitySummary resource type"
description: "Represents the total number of identities of a specific kind and the number of a specific finding for that identity in an authorization system."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsAnalyticsAggregatedIdentitySummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

permissionsAnalyticsAggregatedIdentitySummary will return the total number of an identity (Ex: roles) and the total number of a specific finding for that identity (Ex: inactive roles) in an authorization system. These values will be aggregated when filtering for multiple authorization systems.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|findingsCount|Int32|This will represent the total number of an identity that actually has a specific finding type	|
|totalCount|Int32|This will represent the total number of an identity in an auth system that could have a specific finding type|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.permissionsAnalyticsAggregatedIdentitySummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsAnalyticsAggregatedIdentitySummary",
  "totalCount": "Integer",
  "findingsCount": "Integer"
}
```

