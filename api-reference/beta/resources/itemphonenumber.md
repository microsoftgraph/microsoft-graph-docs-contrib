---
title: "itemPhoneNumber resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "People"
doc_type: "resourcePageType"
---

# itemPhoneNumber resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The itemPhone resource type provides detailed information about phone numbers the user has associated in various services.

## Methods

| Method                                               | Return Type                           | Description                                                  |
|:-----------------------------------------------------|:--------------------------------------|:-------------------------------------------------------------|
| [Get itemPhoneNumber](../api/itemphonenumber-get.md) | [itemPhoneNumber](itemphonenumber.md) | Read properties and relationships of itemPhoneNumber object. |
| [Update](../api/itemphonenumber-update.md)           | [itemPhoneNumber](itemphonenumber.md) | Update itemPhoneNumber object.                               |
| [Delete](../api/itemphonenumber-delete.md)           | None                                  | Delete itemPhoneNumber object.                               |

## Properties

| Property     | Type        | Description                                                                                                                     |
|:-------------|:------------|:--------------------------------------------------------------------------------------------------------------------------------|
|displayName   |String       | Contains a friendly name for the phone number.                                                                                  |
|number        |String       | Contains the phone number                                                                                                       |
|type          |string       | Possible values are: `home`, `business`, `mobile`, `other`, `assistant`, `homeFax`, `businessFax`, `otherFax`, `pager`, `radio`.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.itemPhoneNumber",
  "baseType": ""
}-->

```json
{
  "displayName": "String",
  "number": "String",
  "type": "string"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "itemPhoneNumber resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->