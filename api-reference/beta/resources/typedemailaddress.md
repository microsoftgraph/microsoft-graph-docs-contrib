---
title: "typedEmailAddress resource type"
description: "Represents the name, email addresses, and their corresponding email address type of a contact."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: mail
author: "kevinbellinger"
ms.date: 04/03/2024
---

# typedEmailAddress resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the name, email addresses, and their corresponding email address type of a [contact](contact.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|address|String|The email address of a contact.|
|name|String|The display name of a contact.|
|type |String |The type of email address. Possible values are: `unknown`, `work`, `personal`, `main`, `other`. The default value is `unknown`, which means **address** has not been set as a specific type. |
|otherLabel |String  |To specify a custom type of email address, set **type** to `other`, and assign **otherLabel** to a custom string. For example, you may use a specific email address for your volunteer activities. Set **type** to `other`, and set **otherLabel** to a custom string such as `Volunteer work`. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.typedEmailAddress"
}-->

```json
{
  "address": "string",
  "name": "string",
  "type": "string",
  "otherLabel": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "emailAddress resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


