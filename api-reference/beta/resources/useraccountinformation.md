---
title: "userAccountInformation resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "People"
doc_type: "resourcePageType"
---

# userAccountInformation resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get userAccountInformation](../api/useraccountinformation-get.md) | [userAccountInformation](useraccountinformation.md) | Read properties and relationships of userAccountInformation object. |
| [Update](../api/useraccountinformation-update.md) | [userAccountInformation](useraccountinformation.md) | Update userAccountInformation object. |
| [Delete](../api/useraccountinformation-delete.md) | None | Delete userAccountInformation object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|ageGroup|String||
|countryCode|String||
|preferredLanguageTag|[localeInfo](localeinfo.md)||
|userPrincipalName|String||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.userAccountInformation",
  "baseType": ""
}-->

```json
{
  "ageGroup": "String",
  "countryCode": "String",
  "preferredLanguageTag": {"@odata.type": "microsoft.graph.localeInfo"},
  "userPrincipalName": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "userAccountInformation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->