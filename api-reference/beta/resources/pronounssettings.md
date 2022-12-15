---
title: "pronounsSettings resource type"
description: "This resource represents a Setting to control the availability of Pronouns in the tenant"
author: "aymen-ms"
ms.localizationpriority: medium
ms.prod: "people"
doc_type: resourcePageType
---

# pronounsSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Setting to control the availability of Pronouns in the tenant.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get pronounsSettings](../api/pronounssettings-get.md)|[pronounsSettings](../resources/pronounssettings.md)|Read the properties and relationships of a [pronounsSettings](../resources/pronounssettings.md) object.|
|[Update pronounsSettings](../api/pronounssettings-update.md)|[pronounsSettings](../resources/pronounssettings.md)|Update the properties of a [pronounsSettings](../resources/pronounssettings.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabledInOrganization|Boolean|`true` if the specified type of insights are enabled for the organization; `false` if the specified type of insights are disabled for all users without exceptions. Default is `false`.|

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
  "isEnabledInOrganization": "Boolean"
}
```

