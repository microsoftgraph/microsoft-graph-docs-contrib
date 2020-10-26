---
title: "reviewSetQuery resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# reviewSetQuery resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List queries](../api/reviewset-list-queries.md)|[reviewSetQuery](../resources/reviewsetquery.md) collection|Get the reviewSetQuery resources from the queries navigation property.|
|[Create queries](../api/reviewset-post-queries.md)|[reviewSetQuery](../resources/reviewsetquery.md)|Create a new reviewSetQuery object.|
|[Update queries](../api/reviewset-update-queries.md)|[reviewSetQuery](../resources/reviewsetquery.md)|Update the properties of a queries object.|
|[Get queries](../api/reviewset-get-reviewsetquery.md)|[reviewSetQuery](../resources/reviewsetquery.md)|Read the properties and relationships of a [reviewSetQuery](../resources/reviewsetquery.md) object.|
|[Delete queries](../api/reviewset-delete-queries.md)|None|Delete a [reviewSetQuery](../resources/reviewsetquery.md) object.|
|[List reviewSetQueries](../api/reviewsetquery-list.md)|[reviewSetQuery](../resources/reviewsetquery.md) collection|Get a list of the [reviewSetQuery](../resources/reviewsetquery.md) objects and their properties.|
|[Create reviewSetQuery](../api/reviewsetquery-create.md)|[reviewSetQuery](../resources/reviewsetquery.md)|Create a new [reviewSetQuery](../resources/reviewsetquery.md) object.|
|[Get reviewSetQuery](../api/reviewsetquery-get.md)|[reviewSetQuery](../resources/reviewsetquery.md)|Read the properties and relationships of a [reviewSetQuery](../resources/reviewsetquery.md) object.|
|[Update reviewSetQuery](../api/reviewsetquery-update.md)|[reviewSetQuery](../resources/reviewsetquery.md)|Update the properties of a [reviewSetQuery](../resources/reviewsetquery.md) object.|
|[Delete reviewSetQuery](../api/reviewsetquery-delete.md)|None|Deletes a [reviewSetQuery](../resources/reviewsetquery.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|query|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.reviewSetQuery",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reviewSetQuery",
  "query": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

