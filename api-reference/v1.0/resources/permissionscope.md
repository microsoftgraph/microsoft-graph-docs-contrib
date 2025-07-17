---
title: "permissionScope resource type"
description: "Represents the definition of a delegated permission, sometimes referred to as an OAuth 2.0 permission or an OAuth 2.0 scope. Once defined, the delegated permission may then be requested by a client application"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-sign-in"
author: "psignoret"
ms.date: 04/03/2024
---

# permissionScope resource type

Namespace: microsoft.graph

Represents the definition of a [delegated permission](/azure/active-directory/develop/v2-permissions-and-consent#permission-types).

Delegated permissions can be requested by client applications needing an access token to the API that defined the permissions. Delegated permissions can be requested [dynamically](/azure/active-directory/develop/v2-permissions-and-consent#requesting-individual-user-consent), using the `scopes` parameter in an authorization request to the Microsoft identity platform, or [statically](/azure/active-directory/develop/v2-permissions-and-consent#the-default-scope), through the **requiredResourceAccess** collection on the [application](application.md) object.

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
|adminConsentDescription|String|A description of the delegated permissions, intended to be read by an administrator granting the permission on behalf of all users. This text appears in tenant-wide admin consent experiences.|
|adminConsentDisplayName|String|The permission's title, intended to be read by an administrator granting the permission on behalf of all users.|
|id|Guid|Unique delegated permission identifier inside the collection of delegated permissions defined for a resource application.|
|isEnabled|Boolean|When you create or update a permission, this property must be set to **true** (which is the default). To delete a permission, this property must first be set to **false**.  At that point, in a subsequent call, the permission may be removed.|
|type|String|The possible values are: `User` and `Admin`. Specifies whether this delegated permission should be considered safe for non-admin users to consent to on behalf of themselves, or whether an administrator consent should always be required. While Microsoft Graph defines the default consent requirement for each permission, the tenant administrator may override the behavior in their organization (by allowing, restricting, or limiting user consent to this delegated permission). For more information, see [Configure how users consent to applications](/azure/active-directory/manage-apps/configure-user-consent).|
|userConsentDescription|String|A description of the delegated permissions, intended to be read by a user granting the permission on their own behalf. This text appears in consent experiences where the user is consenting only on behalf of themselves.|
|userConsentDisplayName|String|A title for the permission, intended to be read by a user granting the permission on their own behalf. This text appears in consent experiences where the user is consenting only on behalf of themselves.|
|value|String|Specifies the value to include in the `scp` (scope) claim in access tokens. Must not exceed 120 characters in length. Allowed characters are `:` `!` `#` `$` `%` `&` `'` `(` `)` `*` `+` `,` `-` `.` `/` `:` `;` <code>&lt;</code> `=` <code>&gt;</code> `?` `@` `[` `]` `^` `+` `_` <code>&#96;</code> `{` <code>&#124;</code> `}` `~`, and characters in the ranges `0-9`, `A-Z` and `a-z`. Any other character, including the space character, aren't allowed. May not begin with `.`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.permissionScope"
}-->

```json
{
  "id": "Guid",
  "adminConsentDisplayName": "String",
  "adminConsentDescription": "String",
  "userConsentDisplayName": "String",
  "userConsentDescription": "String",
  "value": "String",
  "type": "String",
  "isEnabled": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "oAuth2Permission resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
