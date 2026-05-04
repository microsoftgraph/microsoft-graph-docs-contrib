---
title: "List sponsors (for agentUser)"
description: "Get an agent user's sponsors."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 4/27/2026
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# List sponsors (for agentUser)

Namespace: microsoft.graph

Get an [agentUser's](../resources/agentuser.md) sponsors. Sponsors are users and groups that are responsible for this agent user's privileges in the tenant and for keeping the agent user's information and access up to date.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentuser_list_sponsors" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentuser-list-sponsors-permissions.md)]

[!INCLUDE [rbac-user-sponsors-apis-read](../includes/rbac-for-apis/rbac-user-sponsors-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{usersId}/sponsors
```

## Optional query parameters

This method supports the `$select` and `$expand` [OData query parameters](/graph/query-parameters) to help customize the response. You can specify `$select` inside `$expand` to select the individual sponsor's properties: `$expand=sponsors($select=id,displayName)`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [directoryObject](../resources/directoryobject.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_sponsors_agentuser"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/users/{usersId}/sponsors
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.directoryObject",
      "id": "a6c034b8-621b-dee3-6abb-52cbce801fe9",
    }
  ]
}
```


