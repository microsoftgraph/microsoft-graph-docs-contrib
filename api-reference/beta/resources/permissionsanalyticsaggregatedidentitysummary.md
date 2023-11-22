---
title: "permissionsAnalyticsAggregatedIdentitySummary resource type"
description: "Represents the total number of identities of a specific kind and the number of a specific finding for that identity in an authorization system."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsAnalyticsAggregatedIdentitySummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the total number of identities of a specific kind, for example, roles, and the number of a specific finding for that identity, for example, inactive roles, in an authorization system.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|findingsCount|Int32|The total number of identities of a specific kind that has a specific finding type.|
|totalCount|Int32|The total number of identities in an authorization system that Permissions Management checked for a specific finding.|

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

