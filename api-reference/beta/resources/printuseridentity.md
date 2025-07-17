---
title: printUserIdentity resource type
description: Represents a user identity within the Universal Print service. Maps to a Microsoft Entra user.
author: braedenp-msft
ms.localizationpriority: medium
ms.subservice: universal-print
doc_type: resourcePageType
ms.date: 07/22/2024
---

# printUserIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user identity within the Universal Print service. Maps to an [Microsoft Entra user](user.md).

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The printUserIdentity's identifier. Read-only.|
|displayName|String|The printUserIdentity's display name.|
|ipAddress|String|The printUserIdentity' IP address. Not populated.|
|userPrincipalName|String|The printUserIdentity's user principal name (UPN).|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.printUserIdentity",
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity"
}-->

```json
{
  "id": "String (identifier)",
  "displayName": "String",
  "ipAddress": "String",
  "userPrincipalName": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "printUserIdentity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
