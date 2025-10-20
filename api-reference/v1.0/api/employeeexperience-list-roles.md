---
title: "List roles"
description: "Get a list of all the roles that can be assigned in Viva Engage."
author: "richafnu"
ms.date: 09/22/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
---

# List roles

Namespace: microsoft.graph

Get a list of all the [roles](../resources/engagementrole.md) that can be assigned in Viva Engage.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "employeeexperience_list_roles" } -->
[!INCLUDE [permissions-table](../includes/permissions/employeeexperience-list-roles-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/roles
```

## Optional query parameters

This method supports the `$filter` (`eq`), `$select`, `$top` and `$count` OData query parameters. For general information, see [OData query parameters](/graph/query-parameters). Only the **userId** and **id** properties support the `$filter` parameter.

The folowing table shows how you can use OData query parameters with this API. 

| Description | HTTP request |
|:---|:---|
| Get the first 10 roles and include a count of total roles | `GET /employeeExperience/roles?$top=10&$count=true` |
| List only roles with the display name `Network Admin` | `GET /employeeExperience/roles?$filter=displayName eq 'Network Admin'` |
| Select only the **id** and **displayName** properties | `GET /employeeExperience/roles?$select=id,displayName` |

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [engagementRole](../resources/engagementrole.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_engagementrole"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/employeeExperience/roles
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.engagementRole)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#employeeExperience/roles",
  "value": [
    {
      "id": "ec759127-089f-4f91-8dfc-03a30b51cb38",
      "displayName": "Network Admin"
    },
    {
      "id": "966b8ec4-6457-4f22-bd3c-5a2520e98f4a",
      "displayName": "Verified Admin"
    },
    {
      "id": "77aa47ad-96fe-4ecc-8024-fd1ac5e28f17",
      "displayName": "Corporate Communicator"
    }
  ]
}
```
