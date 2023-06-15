---
title: "deviceCategory resource type"
description: "Represents the category classification of a device within a network infrastructure"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# deviceCategory resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the category classification of a device within a network infrastructure


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List deviceCategories](../api/intune-windowsmanageddevice-list-devicecategory.md)|[deviceCategory](../resources/intune-devicecategory.md) collection|Get a list of the [deviceCategory](../resources/intune-devicecategory.md) objects and their properties.|
|[Create deviceCategory](../api/intune-windowsmanageddevice-post-devicecategory.md)|[deviceCategory](../resources/intune-devicecategory.md)|Create a new [deviceCategory](../resources/intune-devicecategory.md) object.|
|[Get deviceCategory](../api/intune-devicecategory-get.md)|[deviceCategory](../resources/intune-devicecategory.md)|Read the properties and relationships of a [deviceCategory](../resources/intune-devicecategory.md) object.|
|[Update deviceCategory](../api/intune-devicecategory-update.md)|[deviceCategory](../resources/intune-devicecategory.md)|Update the properties of a [deviceCategory](../resources/intune-devicecategory.md) object.|
|[Delete deviceCategory](../api/intune-windowsmanageddevice-delete-devicecategory.md)|None|Delete a [deviceCategory](../resources/intune-devicecategory.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Represents information about the category classification of a device within a network infrastructure|
|displayName|String|Represents the display name or label associated with an entity within a network infrastructure|
|id|String|Represents a unique identifier assigned to a device category within a network infrastructure Inherited from [entity](../resources/entity.md).|
|roleScopeTagIds|String collection|Represents the role scope tags associated with a device category within a network infrastructure|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceCategory",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceCategory",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "roleScopeTagIds": [
    "String"
  ]
}
```

