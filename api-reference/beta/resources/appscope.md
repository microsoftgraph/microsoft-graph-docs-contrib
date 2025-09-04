---
title: "appScope resource type"
description: "An app scope is a scope defined and understood by a specific application."
ms.localizationpriority: medium
author: "eringreenlee"
ms.subservice: "entra-applications"
doc_type: "resourcePageType"
ms.date: 07/23/2024
---

# appScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The scope of a role assignment determines the set of resources for which the principal has access. An app scope is a scope defined and understood by a specific application. The other type of scope is directory scope. Directory scopes are shared scopes stored in the directory that are understood by multiple applications. 

App scopes support the following principal and scope scenarios:
+ A single principal and a single scope
+ Multiple principals and multiple scopes.

## Methods

None.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| displayName | string | Provides the display name of the app-specific resource represented by the app scope. Read only. |
| id | string | ID of an app-specific container or resource representing the scope of the assignment. Usually the immutable ID of the resource. The scope of an assignment determines the set of resources for which the principal is granted access. Required. Read-only.|
| type | String | Describes the type of app-specific resource represented by the app scope. Read-only. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appScope"
}-->

```json
{
  "id": "String (identifier)",
  "type": "String",
  "displayName": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "appScope resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

