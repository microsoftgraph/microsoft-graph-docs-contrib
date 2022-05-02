---
title: "ediscoveryReviewSetQuery resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ediscoveryReviewSetQuery resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [search](../resources/security-search.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryReviewSetQueries](../api/security-ediscoveryreviewset-list-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) collection|Get a list of the [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) objects and their properties.|
|[Create ediscoveryReviewSetQuery](../api/security-ediscoveryreviewset-post-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Create a new [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|
|[Get ediscoveryReviewSetQuery](../api/security-ediscoveryreviewsetquery-get.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Read the properties and relationships of an [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|
|[Update ediscoveryReviewSetQuery](../api/security-ediscoveryreviewsetquery-update.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Update the properties of an [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|
|[Delete ediscoveryReviewSetQuery](../api/security-ediscoveryreviewset-delete-queries.md)|None|Deletes an [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|
|[export](../api/security-ediscoveryreviewsetquery-export.md)|None|**TODO: Add Description**|
|[applyTags](../api/security-ediscoveryreviewsetquery-applytags.md)|None|**TODO: Add Description**|
|[run](../api/security-ediscoveryreviewsetquery-run.md)|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md) collection|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentQuery|String|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|
|description|String|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|
|displayName|String|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryReviewSetQuery",
  "baseType": "microsoft.graph.security.search",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryReviewSetQuery",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "contentQuery": "String"
}
```

