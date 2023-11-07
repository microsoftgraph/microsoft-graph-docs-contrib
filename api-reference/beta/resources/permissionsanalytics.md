---
title: "permissionsAnalytics resource type"
description: "Permissions analytics findings"
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsAnalytics resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List permissionsAnalytics](../api/permissionsanalyticsaggregation-list-aws.md)|[permissionsAnalytics](../resources/permissionsanalytics.md) collection|Get a list of the [permissionsAnalytics](../resources/permissionsanalytics.md) objects and their properties.|
|[Get permissionsAnalytics](../api/permissionsanalytics-get.md)|[permissionsAnalytics](../resources/permissionsanalytics.md)|Read the properties and relationships of a [permissionsAnalytics](../resources/permissionsanalytics.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|findings|[finding](../resources/finding.md) collection|A permissions analytics finding from the Permissions Analytics Report. |
|permissionsCreepIndexDistributions|[permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) collection|Represents the Permissions Creep Index Distribution for the authorization system. PCI distribution chart shows the classification of human and non-human identities based on the PCI score in three buckets (low, medium, high).|


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

