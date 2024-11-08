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

Represents a setting to control people-related admin settings in the tenant.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/namepronunciationsettings-get.md)|[namePronunciationSettings](../resources/namepronunciationsettings.md)|Read the properties and relationships of a [namePronunciationSettings](../resources/namepronunciationsettings.md) object.|
|[Update](../api/namepronunciationsettings-update.md)|[namePronunciationSettings](../resources/namepronunciationsettings.md)|Update the properties of a [namePronunciationSettings](../resources/namepronunciationsettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the **namePronunciationSettings** object. Inherited from [entity](../resources/entity.md).|
|isEnabledInOrganization|Boolean| `true` to enable name pronunciation in the organization; otherwise, `false`. The default value is `false`.|

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

