---
title: "appRole resource type"
description: "Represents an application role that may be requested by a client application calling another application or that may be used to assign an application to users or groups in a specified application role."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "psignoret"
ms.date: 04/03/2024
---

# appRole resource type

Namespace: microsoft.graph

Represents an application role that can be requested by (and granted to) a client application, or that can be used to assign an application to users or groups in a specified role. 

To add, update, or remove app roles for an application, [update the application](../api/application-update.md) for the app or service. App roles on the application entity will be available in all tenants where the application is used. To define app roles that are only applicable in your tenant (for example, app roles representing custom roles in your instance of a multitenant application), you can also [update the service principal](../api/serviceprincipal-update.md) for the app, to add or update app roles to the **appRoles** collection.

With [appRoleAssignments](approleassignment.md), app roles can be assigned to users, groups, or other applications' service principals.

## Properties

| Property   | Type |Description|
|:---------------|:--------|:----------|
|allowedMemberTypes|String collection|Specifies whether this app role can be assigned to users and groups (by setting to `["User"]`), to other application's (by setting to `["Application"]`, or both (by setting to `["User", "Application"]`). App roles supporting assignment to other applications' service principals are also known as [application permissions](/graph/auth/auth-concepts#microsoft-graph-permissions). The "Application" value is only supported for app roles defined on **application** entities.|
|description|String|The description for the app role. This is displayed when the app role is being assigned and, if the app role functions as an application permission, during  consent experiences.|
|displayName|String|Display name for the permission that appears in the app role assignment and consent experiences.|
|id|Guid|Unique role identifier inside the **appRoles** collection. When creating a new app role, a new GUID identifier must be provided. |
|isEnabled|Boolean|When creating or updating an app role, this must be set to **true** (which is the default). To delete a role, this must first be set to **false**.  At that point, in a subsequent call, this role may be removed.|
|origin|String| Specifies if the app role is defined on the [application](application.md) object or on the [servicePrincipal](serviceprincipal.md) entity. Must _not_ be included in any POST or PATCH requests. Read-only. |
|value|String|Specifies the value to include in the `roles` claim in ID tokens and access tokens authenticating an assigned user or service principal. Must not exceed 120 characters in length. Allowed characters are `:` `!` `#` `$` `%` `&` `'` `(` `)` `*` `+` `,` `-` `.` `/` `:` `;` <code>&lt;</code> `=` <code>&gt;</code> `?` `@` `[` `]` `^` `+` `_` <code>&#96;</code> `{` <code>&#124;</code> `}` `~`, and characters in the ranges `0-9`, `A-Z` and `a-z`. Any other character, including the space character, aren't allowed. May not begin with `.`. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.appRole"
}-->

```json
{
  "allowedMemberTypes": ["String"],
  "description": "String",
  "displayName": "String",
  "id": "Guid",
  "isEnabled": true,
  "origin": "String",
  "value": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "appRole resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

