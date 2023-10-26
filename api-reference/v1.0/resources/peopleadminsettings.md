---
title: "peopleAdminSettings resource type"
description: "Represents a setting to control people-related admin settings in the tenant."
author: "rwaithera"
ms.localizationpriority: medium
ms.prod: "people"
doc_type: resourcePageType
---

# peopleAdminSettings resource type

Namespace: microsoft.graph

Represents a setting to control people-related admin settings in the tenant.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get peopleAdminSettings](../api/peopleadminsettings-get.md) | [peopleAdminSettings](../resources/peopleadminsettings.md) | Retrieve the properties and relationships of a [peopleAdminSettings](../resources/peopleadminsettings.md) object. |
|[List profileCardProperties](../api/peopleadminsettings-list-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) collection | Get a collection of [profileCardProperty](../resources/profilecardproperty.md) resources for an organization. |
|[Create profileCardProperty](../api/peopleadminsettings-post-profilecardproperties.md) | [profileCardProperty](profilecardproperty.md) | Create a new [profileCardProperty](../resources/profilecardproperty.md) for an organization. |

## Properties

| Property | Type   | Description                                                                                     |
|:---------|:-------|:------------------------------------------------------------------------------------------------|
| id       | String | The unique identifier for a **peopleAdminSettings** object. Inherited from [entity](entity.md). |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|profileCardProperties|[profileCardProperty](profilecardproperty.md) collection| Contains a collection of the properties an administrator has defined as visible on the Microsoft 365 profile card.|

## JSON representation

The following JSON representation shows the resource type.

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
