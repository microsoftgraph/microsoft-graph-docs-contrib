---
title: "reviewSet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# reviewSet resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List reviewSets](../api/ediscoverycase-list-reviewsets.md)|[reviewSet](../resources/reviewset.md) collection|Get the reviewSet resources from the reviewSets navigation property.|
|[Create reviewSets](../api/ediscoverycase-post-reviewsets.md)|[reviewSet](../resources/reviewset.md)|Create a new reviewSet object.|
|[Update reviewSets](../api/ediscoverycase-update-reviewsets.md)|[reviewSet](../resources/reviewset.md)|Update the properties of a reviewSets object.|
|[Get reviewSets](../api/ediscoverycase-get-reviewset.md)|[reviewSet](../resources/reviewset.md)|Read the properties and relationships of a [reviewSet](../resources/reviewset.md) object.|
|[Delete reviewSets](../api/ediscoverycase-delete-reviewsets.md)|None|Delete a [reviewSet](../resources/reviewset.md) object.|
|[List reviewSets](../api/reviewset-list.md)|[reviewSet](../resources/reviewset.md) collection|Get a list of the [reviewSet](../resources/reviewset.md) objects and their properties.|
|[Create reviewSet](../api/reviewset-create.md)|[reviewSet](../resources/reviewset.md)|Create a new [reviewSet](../resources/reviewset.md) object.|
|[Get reviewSet](../api/reviewset-get.md)|[reviewSet](../resources/reviewset.md)|Read the properties and relationships of a [reviewSet](../resources/reviewset.md) object.|
|[Update reviewSet](../api/reviewset-update.md)|[reviewSet](../resources/reviewset.md)|Update the properties of a [reviewSet](../resources/reviewset.md) object.|
|[Delete reviewSet](../api/reviewset-delete.md)|None|Deletes a [reviewSet](../resources/reviewset.md) object.|
|[List queries](../api/reviewset-list-queries.md)|[reviewSetQuery](../resources/reviewsetquery.md) collection|Get the reviewSetQuery resources from the queries navigation property.|
|[Create queries](../api/reviewset-post-queries.md)|[reviewSetQuery](../resources/reviewsetquery.md)|Create a new reviewSetQuery object.|
|[Get queries](../api/reviewset-get-reviewsetquery.md)|[reviewSetQuery](../resources/reviewsetquery.md)|Read the properties and relationships of a [reviewSetQuery](../resources/reviewsetquery.md) object.|
|[Update queries](../api/reviewset-update-queries.md)|[reviewSetQuery](../resources/reviewsetquery.md)|Update the properties of a queries object.|
|[Delete queries](../api/reviewset-delete-queries.md)|None|Delete a [reviewSetQuery](../resources/reviewsetquery.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|queries|[reviewSetQuery](../resources/reviewsetquery.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reviewSet",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reviewSet",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

