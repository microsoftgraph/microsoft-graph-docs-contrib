---
title: "oAuth2PermissionGrant resource type"
description: "Represents the delegated permissions (OAuth 2.0 scopes) which have been granted to an application, often as a result of user or admin consent process."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "entra-applications"
author: "psignoret"
toc.title: OAuth2 (delegated) permission grant
ms.date: 07/22/2024
---

# oAuth2PermissionGrant resource type

Namespace: microsoft.graph

Represents the delegated permissions that have been granted to an application's service principal.

Delegated permissions grants can be created as a result of a user consenting an application's request to access an API, or created directly.

Delegated permissions are sometimes referred to as "OAuth 2.0 scopes" or "scopes".

## Methods

| Method | Return Type | Description |
|:---------------|:--------|:----------|
| [List](../api/oauth2permissiongrant-list.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md) collection | Retrieve a list of delegated permission grants. |
| [Get](../api/oauth2permissiongrant-get.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md)  | Read a single delegated permission grant.|
| [Create](../api/oauth2permissiongrant-post.md) | [oAuth2PermissionGrant](oauth2permissiongrant.md) | Create a delegated permission grant. |
| [Update](../api/oauth2permissiongrant-update.md) | None | Update oAuth2PermissionGrant object. |
| [Delete](../api/oauth2permissiongrant-delete.md) | None  | Delete a delegated permission grant. |
|[Get delta](../api/oauth2permissiongrant-delta.md)|[oAuth2PermissionGrant](oauth2permissiongrant.md)|Get newly created, updated, or deleted **oauth2permissiongrant** objects without performing a full read of the entire resource collection.|

## Properties

| Property | Type | Description |
|:---------------|:--------|:----------|
| clientId | String | The object **id** (*not* **appId**) of the client [service principal](serviceprincipal.md) for the application that's authorized to act on behalf of a signed-in user when accessing an API. Required. Supports `$filter` (`eq` only). |
| consentType | String | Indicates if authorization is granted for the client application to impersonate all users or only a specific user. *AllPrincipals* indicates authorization to impersonate all users. *Principal* indicates authorization to impersonate a specific user. Consent on behalf of all users can be granted by an administrator. Nonadmin users might be authorized to consent on behalf of themselves in some cases, for some delegated permissions. Required. Supports `$filter` (`eq` only). |
| id | String | Unique identifier for the **oAuth2PermissionGrant**. Read-only.|
| principalId | String | The **id** of the [user](user.md) on behalf of whom the client is authorized to access the resource, when **consentType** is *Principal*. If **consentType** is *AllPrincipals* this value is null. Required when **consentType** is *Principal*. Supports `$filter` (`eq` only).|
| resourceId | String | The **id** of the resource [service principal](serviceprincipal.md) to which access is authorized. This identifies the API that the client is authorized to attempt to call on behalf of a signed-in user. Supports `$filter` (`eq` only). |
| scope | String | A space-separated list of the claim values for delegated permissions that should be included in access tokens for the resource application (the API). For example, `openid User.Read GroupMember.Read.All`. Each claim value should match the **value** field of one of the delegated permissions defined by the API, listed in the **oauth2PermissionScopes** property of the resource [service principal](serviceprincipal.md). Must not exceed 3,850 characters in length.|

## Relationships

None.

This resource supports using [delta query](/graph/delta-query-overview) to track incremental additions, deletions, and updates, by providing a [delta](../api/oauth2permissiongrant-delta.md) function.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.oAuth2PermissionGrant"
}-->

```json
{
  "clientId": "string",
  "consentType": "string",
  "id": "string (identifier)",
  "principalId": "string",
  "resourceId": "string",
  "scope": "string"
}
```

## Related content

+ [Grant or revoke delegated permissions using Microsoft Graph](/graph/permissions-grant-via-msgraph?pivots=grant-delegated-permissions)


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "oAuth2PermissionGrant resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

