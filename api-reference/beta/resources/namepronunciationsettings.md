---
title: "namePronunciationSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# namePronunciationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/peopleadminsettings-list-namepronunciation.md)|[namePronunciationSettings](../resources/namepronunciationsettings.md) collection|Get a list of the [namePronunciationSettings](../resources/namepronunciationsettings.md) objects and their properties.|
|[Create](../api/peopleadminsettings-post-namepronunciation.md)|[namePronunciationSettings](../resources/namepronunciationsettings.md)|Create a new [namePronunciationSettings](../resources/namepronunciationsettings.md) object.|
|[Get](../api/namepronunciationsettings-get.md)|[namePronunciationSettings](../resources/namepronunciationsettings.md)|Read the properties and relationships of a [namePronunciationSettings](../resources/namepronunciationsettings.md) object.|
|[Update](../api/namepronunciationsettings-update.md)|[namePronunciationSettings](../resources/namepronunciationsettings.md)|Update the properties of a [namePronunciationSettings](../resources/namepronunciationsettings.md) object.|
|[Delete](../api/peopleadminsettings-delete-namepronunciation.md)|None|Delete a [namePronunciationSettings](../resources/namepronunciationsettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isEnabledInOrganization|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.namePronunciationSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.namePronunciationSettings",
  "id": "String (identifier)",
  "isEnabledInOrganization": "Boolean"
}
```

