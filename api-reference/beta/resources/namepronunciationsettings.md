---
title: "namePronunciationSettings resource type"
description: "Represents a setting to control people-related admin settings in the tenant."
author: "fondieki"
ms.localizationpriority: medium
ms.subservice: "people"
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
|id|String|The unique identifier for a peopleAdminSettings object. Inherited from [entity](../resources/entity.md).|
|isEnabledInOrganization|Boolean| `true` to enable pronouns in the organization; otherwise, `false`. The default value is `false`, and namepronunciation is disabled.|

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

