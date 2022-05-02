---
title: "ediscoveryReviewTag resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ediscoveryReviewTag resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [tag](../resources/security-tag.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryReviewTags](../api/security-ediscoveryfile-list-tags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|Get a list of the [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) objects and their properties.|
|[Create ediscoveryReviewTag](../api/security-ediscoveryfile-post-tags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|Create a new [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object.|
|[Get ediscoveryReviewTag](../api/security-ediscoveryreviewtag-get.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|Read the properties and relationships of an [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object.|
|[Update ediscoveryReviewTag](../api/security-ediscoveryreviewtag-update.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|Update the properties of an [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object.|
|[Delete ediscoveryReviewTag](../api/security-ediscoveryfile-delete-tags.md)|None|Deletes an [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object.|
|[asHierarchy](../api/security-ediscoveryreviewtag-ashierarchy.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|**TODO: Add Description**|
|[List childTags](../api/security-ediscoveryfile-list-tags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|Get the ediscoveryReviewTag resources from the childTags navigation property.|
|[Add ediscoveryReviewTag](../api/security-ediscoveryreviewtag-post-childtags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|Add childTags by posting to the childTags collection.|
|[Remove childTags](../api/security-ediscoveryreviewtag-delete-childtags.md)|None|Remove an [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object.|
|[List ediscoveryReviewTag](../api/security-ediscoveryfile-list-tags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|Get the ediscoveryReviewTag resources from the parent navigation property.|
|[Add ediscoveryReviewTag](../api/security-ediscoveryreviewtag-post-parent.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|Add parent by posting to the parent collection.|
|[Remove ediscoveryReviewTag](../api/security-ediscoveryreviewtag-delete-parent.md)|None|Remove an [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|childSelectability|childSelectability|**TODO: Add Description**.The possible values are: `One`, `Many`, `unknownFutureValue`.|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [tag](../resources/security-tag.md).|
|description|String|**TODO: Add Description** Inherited from [tag](../resources/security-tag.md).|
|displayName|String|**TODO: Add Description** Inherited from [tag](../resources/security-tag.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [tag](../resources/security-tag.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|childTags|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|**TODO: Add Description**|
|parent|[ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryReviewTag",
  "baseType": "microsoft.graph.security.tag",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryReviewTag",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "childSelectability": "String"
}
```

