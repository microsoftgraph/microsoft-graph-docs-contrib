---
title: "pronounsSettings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
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
|[List pronounsSettings](../api/organizationsettings-list-pronouns.md)|[pronounsSettings](../resources/pronounssettings.md) collection|Get a list of the [pronounsSettings](../resources/pronounssettings.md) objects and their properties.|
|[Create pronounsSettings](../api/organizationsettings-post-pronouns.md)|[pronounsSettings](../resources/pronounssettings.md)|Create a new [pronounsSettings](../resources/pronounssettings.md) object.|
|[Get pronounsSettings](../api/pronounssettings-get.md)|[pronounsSettings](../resources/pronounssettings.md)|Read the properties and relationships of a [pronounsSettings](../resources/pronounssettings.md) object.|
|[Update pronounsSettings](../api/pronounssettings-update.md)|[pronounsSettings](../resources/pronounssettings.md)|Update the properties of a [pronounsSettings](../resources/pronounssettings.md) object.|
|[Delete pronounsSettings](../api/organizationsettings-delete-pronouns.md)|None|Delete a [pronounsSettings](../resources/pronounssettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
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

