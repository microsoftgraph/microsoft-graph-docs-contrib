---
title: "profileCardProperty resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# profileCardProperty resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List profileCardProperties](../api/profilecardproperty-list.md)|[profileCardProperty](../resources/profilecardproperty.md) collection|Get a list of the [profileCardProperty](../resources/profilecardproperty.md) objects and their properties.|
|[Create profileCardProperty](../api/organizationsettings-post-profilecardproperties.md)|[profileCardProperty](../resources/profilecardproperty.md)|Create a new [profileCardProperty](../resources/profilecardproperty.md) object.|
|[Get profileCardProperty](../api/profilecardproperty-get.md)|[profileCardProperty](../resources/profilecardproperty.md)|Read the properties and relationships of a [profileCardProperty](../resources/profilecardproperty.md) object.|
|[Update profileCardProperty](../api/profilecardproperty-update.md)|[profileCardProperty](../resources/profilecardproperty.md)|Update the properties of a [profileCardProperty](../resources/profilecardproperty.md) object.|
|[Delete profileCardProperty](../api/profilecardproperty-delete.md)|None|Deletes a [profileCardProperty](../resources/profilecardproperty.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|annotations|[profileCardAnnotation](../resources/profilecardannotation.md) collection|**TODO: Add Description**|
|directoryPropertyName|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.profileCardProperty",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.profileCardProperty",
  "directoryPropertyName": "String",
  "annotations": [
    {
      "@odata.type": "microsoft.graph.profileCardAnnotation"
    }
  ]
}
```

