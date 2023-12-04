---
title: "permissionsAnalyticsAggregatedIamKeySummary resource type"
description: "Represents the total number of IAM keys and the number of a specific finding for that IAM Key in an authorization system."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsAnalyticsAggregatedIamKeySummary resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the total number of IAM keys and the number of a specific finding for that IAM Key in an authorization system.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|findingsCount|Int32|The total number of identities of a specific kind that has a specific finding type.|
|totalCount|Int32|The total number of identities in an authorization system that Permissions Management checked for a specific finding.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.permissionsAnalyticsAggregatedIamKeySummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsAnalyticsAggregatedIamKeySummary",
  "totalCount": "Integer",
  "findingsCountOverLimit": "Integer"
}
```

