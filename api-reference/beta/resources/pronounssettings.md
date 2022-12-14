---
title: "pronounsSettings resource type"
description: "Represents a Settings to control availability of Pronouns in the tenant"
author: "aymen-ms"
ms.localizationpriority: medium
ms.prod: "people"
doc_type: resourcePageType
---

# pronounsSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get pronounsSettings](../api/pronounssettings-get.md)|[pronounsSettings](../resources/pronounssettings.md)|Read the properties and relationships of a [pronounsSettings](../resources/pronounssettings.md) object.|
|[Update pronounsSettings](../api/pronounssettings-update.md)|[pronounsSettings](../resources/pronounssettings.md)|Update the properties of a [pronounsSettings](../resources/pronounssettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabledInOrganization|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.pronounsSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.pronounsSettings",
  "id": "String (identifier)",
  "isEnabledInOrganization": "Boolean"
}
```

