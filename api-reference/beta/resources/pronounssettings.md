---
title: "pronounsSettings resource type"
description: "Represents the settings that manage the support of pronouns in an organization."
author: "aymen-ms"
ms.localizationpriority: medium
ms.prod: "people"
doc_type: resourcePageType
---

# pronounsSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings that manage the support of pronouns in an organization. By default, pronouns are disabled. If enabled, users can optionally add or update their pronouns.

For more information about enabling pronouns support, see [Manage pronouns settings for an organization using the Microsoft Graph API](/graph/pronouns-configure-pronouns-availability).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List pronounsSettings](../api/peopleadminsettings-list-pronouns.md)|[pronounsSettings](../resources/pronounssettings.md)|Get the properties of the [pronounsSettings](../resources/pronounssettings.md) resource for an organization.|
|[Update pronounsSettings](../api/pronounssettings-update.md)|[pronounsSettings](../resources/pronounssettings.md)|Update the properties of a [pronounsSettings](../resources/pronounssettings.md) object in an organization.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabledInOrganization|Boolean| `true` to enable pronouns in the organization; otherwise, `false`. The default value is `false`, and pronouns are disabled.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

