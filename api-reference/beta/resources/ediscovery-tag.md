---
title: "tag resource type"
description: "Tags are used to mark documents during review to separate responsive and non-responsive content"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# tag resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Tags are used to mark documents during review to separate responsive and non-responsive content

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List tags](../api/ediscovery-case-list-tags.md)|[tag](../resources/ediscovery-tag.md) collection|Get a list of the [tag](../resources/ediscovery-tag.md) objects and their properties.|
|[Create tag](../api/ediscovery-case-post-tags.md)|[tag](../resources/ediscovery-tag.md)|Create a new [tag](../resources/ediscovery-tag.md) object.|
|[Get tag](../api/ediscovery-tag-get.md)|[tag](../resources/ediscovery-tag.md)|Read the properties and relationships of a [tag](../resources/ediscovery-tag.md) object.|
|[Update tag](../api/ediscovery-tag-update.md)|[tag](../resources/ediscovery-tag.md)|Update the properties of a [tag](../resources/ediscovery-tag.md) object.|
|[Delete tag](../api/ediscovery-tag-delete.md)|None|Deletes a [tag](../resources/ediscovery-tag.md) object.|
|[asHierarchy](../api/ediscovery-tag-list-ashierarchy.md)|[tag](../resources/ediscovery-tag.md) collection|Lists all tags including their hierarchy.|
|[List childTags](../api/ediscovery-tag-list-childtags.md)|[tag](../resources/ediscovery-tag.md) collection|Get the tag resources from the childTags navigation property.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|childSelectability|childSelectability|Indicates whether a single or multiple child tags can be associated with a document. Possible values are: `One`, `Many`.  This value controls whether the UX presents the tags as checkboxes or a radio button group.|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the tag.|
|description|String|The description for the tag.|
|displayName|String|Display name of the tag.|
|id|String|Unique identifier for the tag.|
|lastModifiedDateTime|DateTimeOffset|The date and time the tag was last modified.|

### childSelectability values

|Member|Description|
|:----|-----------|
|One|Only one child can be selected - this corresponds to a user interface that presents the tags with radio buttons.|
|Many|Zero or many children can be selected - this corresponds to a user interface that presents the tags with checkboxes.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|childTags|[tag](../resources/ediscovery-tag.md) collection|Returns the tags that are a child of a tag.|
|parent|[tag](../resources/ediscovery-tag.md)|Returns the parent tag of the specified tag.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tag",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.tag",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "childSelectability": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```
