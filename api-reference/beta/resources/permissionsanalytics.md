---
title: "permissionsAnalytics resource type"
description: "Container for permissions analytics findings in Microsoft Entra Permissions Management."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# permissionsAnalytics resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container for permissions analytics findings in Microsoft Entra Permissions Management.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|findings|[finding](../resources/finding.md) collection|The output of the permissions usage data analysis performed by Permissions Management to assess risk with identities and resources. |
|permissionsCreepIndexDistributions|[permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) collection|Represents the Permissions Creep Index (PCI) for the authorization system. PCI distribution chart shows the classification of human and nonhuman identities based on the PCI score in three buckets (low, medium, high).|


## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionsAnalytics",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsAnalytics",
  "id": "String (identifier)"
}
```

