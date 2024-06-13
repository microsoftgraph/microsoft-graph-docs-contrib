---
title: "photoUpdateSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# photoUpdateSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Update](../api/photoupdatesettings-update.md)|[photoUpdateSettings](../resources/photoupdatesettings.md)|Update the properties of a [photoUpdateSettings](../resources/photoupdatesettings.md) object.|
|[Delete](../api/peopleadminsettings-delete-photoupdatesettings.md)|None|Delete a [photoUpdateSettings](../resources/photoupdatesettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|id String The unique identgit stauifier for a peopleAdminSettings object.Inherited from [entity](../resources/entity.md).|
|source|photoUpdateSource|The possible values are: `cloud`, `onPremises`, `unknownFutureValue`.|

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

