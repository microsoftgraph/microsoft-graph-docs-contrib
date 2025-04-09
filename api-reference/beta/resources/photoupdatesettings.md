---
title: "photoUpdateSettings resource type"
description: "Represents the settings that manage the support of photos modified in an organization."
author: "fondieki"
ms.localizationpriority: medium
ms.subservice: "people"
doc_type: resourcePageType
ms.date: 07/17/2024
---

# photoUpdateSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings that manage the support of photos modified in an organization. By default, photo updates are disabled. If enabled, users can optionally add or update their photo update settings.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/peopleadminsettings-list-photoupdatesettings.md)|[photoUpdateSettings](../resources/photoupdatesettings.md) collection|Get a list of the [photoUpdateSettings](../resources/photoupdatesettings.md) objects and their properties.|
|[Create](../api/peopleadminsettings-post-photoupdatesettings.md)|[photoUpdateSettings](../resources/photoupdatesettings.md)|Create a new [photoUpdateSettings](../resources/photoupdatesettings.md) object.|
|[Get](../api/photoupdatesettings-get.md)|[photoUpdateSettings](../resources/photoupdatesettings.md)|Read the properties and relationships of a [photoUpdateSettings](../resources/photoupdatesettings.md) object.|
|[Update](../api/photoupdatesettings-update.md)|[photoUpdateSettings](../resources/photoupdatesettings.md)|Update the properties of a [photoUpdateSettings](../resources/photoupdatesettings.md) object.|
|[Delete](../api/peopleadminsettings-delete-photoupdatesettings.md)|None|Delete a [photoUpdateSettings](../resources/photoupdatesettings.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String| The unique identifier for a peopleAdminSettings object. Inherited from [entity](../resources/entity.md).|
|source|String| Specifies the types of photo updates permitted. The possible values are: `cloud`, `onPremises`, `unknownFutureValue`.|
|allowedRoles|String collection|Contains a list of roles to perform edit operations in the cloud. Optional.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.photoUpdateSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.photoUpdateSettings",
  "id": "String (identifier)",
  "source": "String",
  "allowedRoles": [
    "String"
  ]
}
```
