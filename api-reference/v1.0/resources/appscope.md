---
title: "appScope resource type"
description: "An app scope is a scope defined and understood by a specific application."
ms.localizationpriority: medium
author: "DougKirschner"
ms.prod: "applications"
doc_type: "resourcePageType"
---

# appScope resource type

The scope of a role assignment determines the set of resources for which the principal has been granted access. An app scope is a scope defined and understood by a specific application, unlike directory scopes which are shared scopes stored in the directory and understood by multiple applications.

This may be in both the following principal and scope scenarios:
+ A single principal and a single scope
+ Multiple principals and multiple scopes.
	
Inherits from [entity](entity.md).

## Methods
None

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| displayName | string | Provides the display name of the app-specific resource represented by the app scope. Provided for display purposes since appScopeId is often an immutable, non-human-readable id. Read-only. |
| id | string | Identifier of an app-specific container or resource representing the scope of the assignment. Usually the immutable id of the resource. The scope of an assignment determines the set of resources for which the principal has been granted access. Required. |
| type | String | Describes the type of app-specific resource represented by the app scope. Provided for display purposes, so a user interface can convey to the user the kind of app specific resource represented by the app scope. Read-only. |

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appScope"
}-->

```json
{
  "displayName": "String",
  "id": "String (identifier)",
  "type": "String"
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
