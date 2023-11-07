---
title: "permissionsAnalyticsAggregation resource type"
description: "Represents permissions analytics findings for AWS, Azure, and GCP."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsAnalyticsAggregation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents permissions analytics findings for AWS, Azure, and GCP.

Inherits from [entity](../resources/entity.md).

## Methods
None

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the Finding. This id will be base64 encoded using the format:{findingType}{FindingId} to ensure uniqueness. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|aws|[permissionsAnalytics](../resources/permissionsanalytics.md)|AWS permissions analytics findings.|
|azure|[permissionsAnalytics](../resources/permissionsanalytics.md)|Azure permissions analytics findings.|
|gcp|[permissionsAnalytics](../resources/permissionsanalytics.md)|GCP permissions analytics findings.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionsAnalyticsAggregation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsAnalyticsAggregation",
  "id": "String (identifier)"
}
```

