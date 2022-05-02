---
title: "ediscoveryReviewSet resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ediscoveryReviewSet resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [dataSet](../resources/security-dataset.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryReviewSets](../api/security-ediscoverycase-list-reviewsets.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) collection|Get a list of the [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) objects and their properties.|
|[Create ediscoveryReviewSet](../api/security-ediscoverycase-post-reviewsets.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|Create a new [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.|
|[Get ediscoveryReviewSet](../api/security-ediscoveryreviewset-get.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|Read the properties and relationships of an [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.|
|[Update ediscoveryReviewSet](../api/security-ediscoveryreviewset-update.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|Update the properties of an [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.|
|[Delete ediscoveryReviewSet](../api/security-ediscoverycase-delete-reviewsets.md)|None|Deletes an [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.|
|[export](../api/security-ediscoveryreviewset-export.md)|None|**TODO: Add Description**|
|[addToReviewSet](../api/security-ediscoveryreviewset-addtoreviewset.md)|None|**TODO: Add Description**|
|[List files](../api/security-ediscoveryreviewset-list-files.md)|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md) collection|Get the ediscoveryFile resources from the files navigation property.|
|[Create ediscoveryFile](../api/security-ediscoveryreviewset-post-files.md)|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md)|Create a new ediscoveryFile object.|
|[List queries](../api/security-ediscoveryreviewset-list-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) collection|Get the ediscoveryReviewSetQuery resources from the queries navigation property.|
|[Create ediscoveryReviewSetQuery](../api/security-ediscoveryreviewset-post-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Create a new ediscoveryReviewSetQuery object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [dataSet](../resources/security-dataset.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSet](../resources/security-dataset.md).|
|displayName|String|**TODO: Add Description** Inherited from [dataSet](../resources/security-dataset.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|files|[microsoft.graph.security.ediscoveryFile](../resources/security-ediscoveryfile.md) collection|**TODO: Add Description**|
|queries|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryReviewSet",
  "baseType": "microsoft.graph.security.dataSet",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryReviewSet",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)"
}
```

