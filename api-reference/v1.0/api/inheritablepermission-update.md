---
title: "Update inheritablePermission"
description: "Update an inheritablePermission object for an agent identity blueprint."
author: "zallison22"
ms.date: 02/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Update inheritablePermission

Namespace: microsoft.graph

Update the properties of an [inheritablePermission](../resources/inheritablepermission.md) object on an agent identity blueprint. When moving to a more restrictive inheritance pattern, such as from `allAllowedScopes` to `enumeratedScopes` or `noScopes`, any agent identities that require access will require new consent grant to acquire the newly restricted scopes.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "inheritablepermission-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/inheritablepermission-update-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /applications/{id}/microsoft.graph.agentIdentityBlueprint/inheritablePermissions/{resourceAppId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|inheritableScopes|[inheritableScopes](../resources/inheritablescopes.md)|Inheritance pattern applied to delegated permission scopes for the agent identity blueprint. Required.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Example 1: Update inheritablePermission to use allAllowedScopes pattern
This example updates an existing inheritablePermission to use the allAllowedScopes inheritance pattern, allowing all delegated permission scopes from the resource application to be inheritable by agent identities.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_inheritablepermission_allallowedscopes"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/bc057821-f236-49d6-9f2c-1ebf43e9437a/microsoft.graph.agentIdentityBlueprint/inheritablePermissions/00000003-0000-0ff1-ce00-000000000000
Content-Type: application/json

{
  "inheritableScopes": {
    "@odata.type": "microsoft.graph.allAllowedScopes"
  }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-inheritablepermission-allallowedscopes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```


### Example 2: Update inheritablePermission to use enumeratedScopes pattern

This example updates an existing inheritablePermission to use the enumeratedScopes inheritance pattern, allowing only the specified delegated permission scopes from the resource application to be inheritable by agent identities.


#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_inheritablepermission_enumeratedscopes"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/bc057821-f236-49d6-9f2c-1ebf43e9437a/microsoft.graph.agentIdentityBlueprint/inheritablePermissions/00000003-0000-0000-c000-000000000000
Content-Type: application/json

{
  "inheritableScopes": {
    "@odata.type": "microsoft.graph.enumeratedScopes",
    "scopes": [
      "User.Read",
      "Mail.Read"
    ]
  }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-inheritablepermission-enumeratedscopes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```


### Example 3: Update inheritablePermission to use noScopes pattern
This example updates an existing inheritablePermission to use the noScopes inheritance pattern, preventing any delegated permission scopes from the resource application from being inheritable by agent identities.

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_inheritablepermission_noscopes"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/applications/bc057821-f236-49d6-9f2c-1ebf43e9437a/microsoft.graph.agentIdentityBlueprint/inheritablePermissions/00000003-0000-0000-c000-000000000000
Content-Type: application/json

{
  "inheritableScopes": {
    "@odata.type": "microsoft.graph.noScopes"
  }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-inheritablepermission-noscopes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
