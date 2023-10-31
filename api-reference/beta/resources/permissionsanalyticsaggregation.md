---
title: "permissionsAnalyticsAggregation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# permissionsAnalyticsAggregation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List permissionsAnalyticsAggregations](../api/identitygovernance-list-permissionsanalytics.md)|[permissionsAnalyticsAggregation](../resources/permissionsanalyticsaggregation.md) collection|Get a list of the [permissionsAnalyticsAggregation](../resources/permissionsanalyticsaggregation.md) objects and their properties.|
|[Create permissionsAnalyticsAggregation](../api/identitygovernance-post-permissionsanalytics.md)|[permissionsAnalyticsAggregation](../resources/permissionsanalyticsaggregation.md)|Create a new [permissionsAnalyticsAggregation](../resources/permissionsanalyticsaggregation.md) object.|
|[Get permissionsAnalyticsAggregation](../api/permissionsanalyticsaggregation-get.md)|[permissionsAnalyticsAggregation](../resources/permissionsanalyticsaggregation.md)|Read the properties and relationships of a [permissionsAnalyticsAggregation](../resources/permissionsanalyticsaggregation.md) object.|
|[Update permissionsAnalyticsAggregation](../api/permissionsanalyticsaggregation-update.md)|[permissionsAnalyticsAggregation](../resources/permissionsanalyticsaggregation.md)|Update the properties of a [permissionsAnalyticsAggregation](../resources/permissionsanalyticsaggregation.md) object.|
|[Delete permissionsAnalyticsAggregation](../api/identitygovernance-delete-permissionsanalytics.md)|None|Delete a [permissionsAnalyticsAggregation](../resources/permissionsanalyticsaggregation.md) object.|
|[List permissionsAnalytics](../api/permissionsanalyticsaggregation-list-aws.md)|[permissionsAnalytics](../resources/permissionsanalytics.md) collection|Get the permissionsAnalytics resources from the aws navigation property.|
|[Create permissionsAnalytics](../api/permissionsanalyticsaggregation-post-aws.md)|[permissionsAnalytics](../resources/permissionsanalytics.md)|Create a new permissionsAnalytics object.|
|[List permissionsAnalytics](../api/permissionsanalyticsaggregation-list-azure.md)|[permissionsAnalytics](../resources/permissionsanalytics.md) collection|Get the permissionsAnalytics resources from the azure navigation property.|
|[Create permissionsAnalytics](../api/permissionsanalyticsaggregation-post-azure.md)|[permissionsAnalytics](../resources/permissionsanalytics.md)|Create a new permissionsAnalytics object.|
|[List permissionsAnalytics](../api/permissionsanalyticsaggregation-list-gcp.md)|[permissionsAnalytics](../resources/permissionsanalytics.md) collection|Get the permissionsAnalytics resources from the gcp navigation property.|
|[Create permissionsAnalytics](../api/permissionsanalyticsaggregation-post-gcp.md)|[permissionsAnalytics](../resources/permissionsanalytics.md)|Create a new permissionsAnalytics object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|aws|[permissionsAnalytics](../resources/permissionsanalytics.md)|**TODO: Add Description**|
|azure|[permissionsAnalytics](../resources/permissionsanalytics.md)|**TODO: Add Description**|
|gcp|[permissionsAnalytics](../resources/permissionsanalytics.md)|**TODO: Add Description**|

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

