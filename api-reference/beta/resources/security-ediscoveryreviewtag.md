---
title: "ediscoveryReviewTag resource type"
description: "Represents an eDiscovery tag, which is used to mark documents during review to separate responsive and non-responsive content"
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryReviewTag resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an eDiscovery tag, which is used to mark documents during review to separate responsive and non-responsive content.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryReviewTags](../api/security-ediscoverycase-list-tags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|Get a list of the [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) objects and their properties.|
|[Create ediscoveryReviewTag](../api/security-ediscoverycase-post-tags.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|Create a new [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object.|
|[Get ediscoveryReviewTag](../api/security-ediscoveryreviewtag-get.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|Read the properties and relationships of an [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object.|
|[Update ediscoveryReviewTag](../api/security-ediscoveryreviewtag-update.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|Update the properties of an [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object.|
|[Delete ediscoveryReviewTag](../api/security-ediscoverycase-delete-tags.md)|None|Delete an [ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) object.|
|[asHierarchy](../api/security-ediscoveryreviewtag-ashierarchy.md)|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|List tags organized as hierarchy.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|childSelectability|microsoft.graph.security.childSelectability|Indicates whether a single or multiple child tags can be associated with a document. Possible values are: `One`, `Many`.  This value controls whether the UX presents the tags as checkboxes or a radio button group.|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the tag.|
|description|String|The description for the tag.|
|displayName|String|Display name of the tag.|
|id|String|Unique identifier for the tag.|
|lastModifiedDateTime|DateTimeOffset|The date and time the tag was last modified.|

### childSelectability values

|Member|Description|
|:----|-----------|
|One|Only one child can be selected. This corresponds to a UI that presents the tags with radio buttons.|
|Many|Zero or many children can be selected. This corresponds to a UI that presents the tags with checkboxes.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|childTags|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md) collection|Returns the tags that are a child of a tag.|
|parent|[microsoft.graph.security.ediscoveryReviewTag](../resources/security-ediscoveryreviewtag.md)|Returns the parent tag of the specified tag.|
## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryReviewTag",
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

