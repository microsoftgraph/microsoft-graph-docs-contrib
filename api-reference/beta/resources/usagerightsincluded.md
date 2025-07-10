---
title: "usageRightsIncluded resource type"
description: "Represents the usage rights associated with a specific piece of content."
author: "ArunGedela"
ms.date: 04/21/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# usageRightsIncluded resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the usage rights associated with a specific piece of content.

This entity defines the permissions and actions available for the content based on its rights.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/usagerightsincluded-get.md)|[usageRightsIncluded](../resources/usagerightsincluded.md)|Read the properties and relationships of a usageRightsIncluded object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the label usage rights entity. Key property.|
|ownerEmail|String|The email of owner label rights.|
|userEmail|String|The email of user with label user rights.|
|value|[usageRights](../resources/usagerights.md)|A reference to the associated usage rights. This value defines the specific rights for the content.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.usageRightsIncluded",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.usageRightsIncluded",
  "id": "String (identifier)",
  "ownerEmail": "String",
  "userEmail": "String",
  "value": "String"
}
```
