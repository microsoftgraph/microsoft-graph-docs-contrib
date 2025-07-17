---
title: "governanceSubject resource type"
description: "Represents users, groups, and service principals being managed in Privileged Identity Management (PIM)."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-id-governance"
author: "rkarim-ms"
ms.date: 03/21/2024
---

# governanceSubject resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents users, groups, and service principals being managed in Privileged Identity Management (PIM).


## Properties
| Property	| Type	     |Description|
|:----------|:----------|:----------|
|id         |String     | The ID of the subject.|
|type       |String     |The type of the subject. The value can be ``User``, ``Group``, and ``ServicePrincipal``.|
|displayName|String     |The display name of the subject.|
|email      |String     |The email address of the user subject. If the subject is in other types, it's empty.|
|principalName|String   |The principal name of the user subject. If the subject is in other types, it's empty.|

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.governanceSubject"
}-->

```json
{
  "id": "String",
  "displayName": "String",
  "email": "String",
  "principalName": "String",
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "governanceSubject",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


