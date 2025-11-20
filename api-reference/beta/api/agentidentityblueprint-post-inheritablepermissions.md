---
title: "Create inheritablePermission"
description: "Create a new inheritablePermission object."
author: "zallison22"
ms.date: 11/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Create inheritablePermission

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [inheritablePermission](../resources/inheritablepermission.md) object for an [agent identity blueprint](../resources/agentidentityblueprint.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-post-inheritablepermissions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-post-inheritablepermissions-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /applications/{id}/graph.agentIdentityBlueprint/inheritablePermissions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [inheritablePermission](../resources/inheritablepermission.md) object.

You can specify the following properties when creating an **inheritablePermission**.

|Property|Type|Description|
|:---|:---|:---|
|resourceAppId|String| The appId of the resource application that publishes the scopes. Required.|
|inheritableScopes|[inheritableScopes](../resources/inheritablescopes.md)|Inheritance configuration defining which delegated permission scopes from the resource application may be automatically inherited by agent identities. Specify one of the patterns: `allAllowedScopes` (all scopes), `enumeratedScopes` (only listed `scopes` collection; must be present and non‑empty), or `noScopes` (inherit none). Required.|



## Response

If successful, this method returns a `201 Created` response code and an [inheritablePermission](../resources/inheritablepermission.md) object in the response body.

## Examples

### Example 1: Create inheritablePermission with allAllowedScopes pattern
This example creates an inheritablePermission that allows all delegated permission scopes from the resource application to be inheritable by agent identities.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_inheritablepermission_allallowedscopes"
}
-->
``` http
POST https://graph.microsoft.com/beta/applications/bc057821-f236-49d6-9f2c-1ebf43e9437a/graph.agentIdentityBlueprint/inheritablePermissions
Content-Type: application/json

{
  "resourceAppId": "00000003-0000-0000-c000-000000000000",
  "inheritableScopes": {
    "@odata.type": "microsoft.graph.allAllowedScopes"
  }
}
```


#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inheritablePermission"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications('bc057821-f236-49d6-9f2c-1ebf43e9437a')/inheritablePermissions/$entity",
  "@odata.type": "#microsoft.graph.inheritablePermission",
  "resourceAppId": "00000003-0000-0000-c000-000000000000",
  "inheritableScopes": {
    "@odata.type": "microsoft.graph.allAllowedScopes",
    "kind": "allAllowed"
  }
}
```

### Example 2: Create inheritablePermission with enumeratedScopes pattern
This example creates an inheritablePermission that allows only the specified delegated permission scopes from the resource application to be inheritable by agent identities.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_inheritablepermission_enumeratedscopes"
}
-->
``` http
POST https://graph.microsoft.com/beta/applications/bc057821-f236-49d6-9f2c-1ebf43e9437a/graph.agentIdentityBlueprint/inheritablePermissions
Content-Type: application/json

{
  "resourceAppId": "00000003-0000-0000-c000-000000000000",
  "inheritableScopes": {
    "@odata.type": "microsoft.graph.enumeratedScopes",
    "scopes": [
      "User.Read",
      "Mail.Read"
    ]
  }
}
```


#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inheritablePermission"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications('bc057821-f236-49d6-9f2c-1ebf43e9437a')/inheritablePermissions/$entity",
  "@odata.type": "#microsoft.graph.inheritablePermission",
  "resourceAppId": "00000003-0000-0000-c000-000000000000",
  "inheritableScopes": {
    "@odata.type": "microsoft.graph.enumeratedScopes",
    "kind": "enumerated",
    "scopes": [
      "User.Read",
      "Mail.Read"
    ]
  }
}
```

### Example 3: Create inheritablePermission with noScopes pattern
This example creates an inheritablePermission that blocks all delegated permission scopes from the resource application from being inheritable by agent identities.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_inheritablepermission_noscopes"
}
-->
``` http
POST https://graph.microsoft.com/beta/applications/bc057821-f236-49d6-9f2c-1ebf43e9437a/graph.agentIdentityBlueprint/inheritablePermissions
Content-Type: application/json

{
  "resourceAppId": "00000003-0000-0000-c000-000000000000",
  "inheritableScopes": {
    "@odata.type": "microsoft.graph.noScopes"
  }
}
```


#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inheritablePermission"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications('bc057821-f236-49d6-9f2c-1ebf43e9437a')/inheritablePermissions/$entity",
  "@odata.type": "#microsoft.graph.inheritablePermission",
  "resourceAppId": "00000003-0000-0000-c000-000000000000",
  "inheritableScopes": {
    "@odata.type": "microsoft.graph.noScopes"
  }
}
```