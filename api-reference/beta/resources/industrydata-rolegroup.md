---
title: "roleGroup resource type"
description: "Represents a named collection of individual roles."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: resourcePageType
---

# roleGroup resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a named collection of individual roles.

Transformation of the data is often shaped by each individual user's role within an organization. These roles are defined as reference definitions. Given the number of potential roles, binding each role individually would result in a tedious user experience. Role groups are simply a collection of role values that provides a convenient way to reference multiple reference definitions. The default role groups are `Students` and `Staff`.

## Methods

| Method                                                   | Return type                                                                    | Description                                                                               |
| :------------------------------------------------------- | :----------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------- |
| [List roleGroups](../api/industrydata-rolegroup-list.md) | [microsoft.graph.industryData.roleGroup](industrydata-rolegroup.md) collection | Get a list of the [roleGroup](industrydata-rolegroup.md) objects and their properties.    |
| [Get roleGroup](../api/industrydata-rolegroup-get.md)    | [microsoft.graph.industryData.roleGroup](industrydata-rolegroup.md)            | Read the properties and relationships of a [roleGroup](industrydata-rolegroup.md) object. |

## Properties

| Property    | Type                                                                                             | Description                                  |
| :---------- | :----------------------------------------------------------------------------------------------- | :------------------------------------------- |
| displayName | String                                                                                           | The name of the role group.                  |
| roles       | [microsoft.graph.industryData.roleReferenceValue](industrydata-rolereferencevalue.md) collection | The set of roles included in the role group. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.industryData.roleGroup",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.roleGroup",
  "displayName": "String",
  "roles": [
    {
      "@odata.type": "microsoft.graph.industryData.roleReferenceValue"
    }
  ]
}
```
