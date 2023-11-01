---
title: "permissionsAnalytics resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
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
|[Create permissionsAnalytics](../api/permissionsanalyticsaggregation-post-aws.md)|[permissionsAnalytics](../resources/permissionsanalytics.md)|Create a new [permissionsAnalytics](../resources/permissionsanalytics.md) object.|
|[Get permissionsAnalytics](../api/permissionsanalytics-get.md)|[permissionsAnalytics](../resources/permissionsanalytics.md)|Read the properties and relationships of a [permissionsAnalytics](../resources/permissionsanalytics.md) object.|
|[Update permissionsAnalytics](../api/permissionsanalytics-update.md)|[permissionsAnalytics](../resources/permissionsanalytics.md)|Update the properties of a [permissionsAnalytics](../resources/permissionsanalytics.md) object.|
|[Delete permissionsAnalytics](../api/permissionsanalyticsaggregation-delete-aws.md)|None|Delete a [permissionsAnalytics](../resources/permissionsanalytics.md) object.|
|[List findings](../api/permissionsanalytics-list-findings.md)|[finding](../resources/finding.md) collection|Get the finding resources from the findings navigation property.|
|[Create finding](../api/permissionsanalytics-post-findings.md)|[finding](../resources/finding.md)|Create a new finding object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|findings|[finding](../resources/finding.md) collection|**TODO: Add Description**|
|permissionsCreepIndexDistributions|[permissionsCreepIndexDistribution](../resources/permissionscreepindexdistribution.md) collection|**TODO: Add Description**|

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

