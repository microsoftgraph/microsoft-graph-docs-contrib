---
title: "pronounsSettings resource type"
description: "Represents a setting to control the availability of pronouns in the tenant"
author: "aymen-ms"
ms.localizationpriority: medium
ms.prod: "people"
doc_type: resourcePageType
---

# pronounsSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents _settings_ to control the availability of pronouns in the tenant. By default, pronouns are **disabled**. If enabled, users can add and update pronouns in Microsoft 365.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List pronounsSettings](../api/organizationsettings-list-pronounssettings.md)|[pronounsSettings](../resources/pronounssettings.md)|Get the _settings_ in [pronounsSettings](../resources/pronounssettings.md) object for displaying pronouns in an organization.|
|[Update pronounsSettings](../api/pronounssettings-update.md)|[pronounsSettings](../resources/pronounssettings.md)|Update the properties of a [pronounsSettings](../resources/pronounssettings.md) resource to manage the display of pronouns in an organization.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabledInOrganization|Boolean| Indicates whether the specified setting is enabled or disabled for the organization. Default value is `false`.|

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
  "isEnabledInOrganization": "Boolean"
}
```

