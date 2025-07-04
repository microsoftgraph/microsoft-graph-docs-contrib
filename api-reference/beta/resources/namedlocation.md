---
title: "namedLocation resource type"
description: "This is the base class that represents a Microsoft Entra ID named location. Named locations are custom rules that define network locations which can then be used in a Conditional Access policy."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# namedLocation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is the base class that represents a Microsoft Entra ID named location. Named locations are custom rules that define network locations which can then be used in a Conditional Access (CA) policy.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/conditionalaccessroot-list-namedlocations.md) | [namedLocation](namedLocation.md) collection | Get all the **namedLocation** objects in the organization. |
| [Get](../api/namedlocation-get.md) | [namedLocation](namedlocation.md) | Read the properties and relationships of a **namedLocation** object. |
| [Delete](../api/namedlocation-delete.md) | None | Delete a **namedLocation** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdDateTime|DateTimeOffset|The Timestamp type represents creation date and time of the location using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|
|displayName|String|Human-readable name of the location.|
|id|String|Identifier of a namedLocation object. Read-only.|
|modifiedDateTime|DateTimeOffset|The Timestamp type represents last modified date and time of the location using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.namedLocation",
  "keyProperty": "id"
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "id": "String (identifier)",
  "modifiedDateTime": "String (timestamp)"
}
```

## Related content

+ [What is Conditional Access?](/azure/active-directory/conditional-access/overview)
+ [Using the location condition in a Conditional Access policy](/azure/active-directory/conditional-access/location-condition)


<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "namedLocation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
