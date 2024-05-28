---
title: "permissionsAnalyticsAggregation resource type"
description: "Represents permissions analytics findings for authorization systems onboarded to Microsoft Entra Permissions Management."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# permissionsAnalyticsAggregation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents permissions analytics findings for authorization systems onboarded to Microsoft Entra Permissions Management. Currently, only AWS, Azure, and GCP are supported.

Inherits from [entity](../resources/entity.md).

## Methods
None

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|

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

