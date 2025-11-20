---
title: "List inheritablePermission objects"
description: "Get a list of inheritablePermission objects for an agent identity blueprint."
author: "zallison22"
ms.date: 11/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# List inheritablePermission objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [inheritablePermission](../resources/inheritablepermission.md) objects and their properties for an agent identity blueprint.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-list-inheritablepermissions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-list-inheritablepermissions-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applications/{id}/graph.agentIdentityBlueprint/inheritablePermissions
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [inheritablePermission](../resources/inheritablepermission.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_inheritablepermission"
}
-->
``` http
GET https://graph.microsoft.com/beta/applications/bc057821-f236-49d6-9f2c-1ebf43e9437a/graph.agentIdentityBlueprint/inheritablePermissions
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inheritablePermission"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#applications('bc057821-f236-49d6-9f2c-1ebf43e9437a')/inheritablePermissions",
  "value": [
    {
      "resourceAppId": "00000003-0000-0000-c000-000000000000",
      "inheritableScopes": {
        "@odata.type": "microsoft.graph.enumeratedScopes",
        "kind": "enumerated",
        "scopes": [
          "User.Read",
          "Mail.Read"
        ]
      }
    },
    {
      "resourceAppId": "00000003-0000-0ff1-ce00-000000000000",
      "inheritableScopes": {
        "@odata.type": "microsoft.graph.allAllowedScopes",
        "kind": "allAllowed"
      }
    },
    {
      "resourceAppId": "a4294fb4-199a-45eb-b2bb-405ae558f61a",
      "inheritableScopes": {
        "@odata.type": "microsoft.graph.noScopes",
        "kind": "none"
      }
    }
  ]
}
```
