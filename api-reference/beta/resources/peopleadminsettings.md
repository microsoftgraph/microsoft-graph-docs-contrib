---
title: "peopleAdminSettings resource type"
description: "Represents a setting to control people related admin settings in the tenant"
author: "rwaithera"
ms.localizationpriority: medium
ms.prod: "people"
doc_type: resourcePageType
---

# peopleAdminSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains people related admin settings that are applicable to the tenant.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Create profileCardProperty](../api/peopleadminsettings-post-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) | Create a new profileCardProperty by posting to the **profileCardProperty** object collection. |
| [List profileCardProperties](../api/peopleadminsettings-list-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) collection | Get a profileCardProperty object collection. |

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|profileCardProperties|[profileCardProperty](profilecardproperty.md) collection| Contains a collection of the properties an administrator has defined as visible on the Microsoft 365 profile card.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.peopleAdminSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.peopleAdminSettings",
  "id": "String (identifier)"
}
```