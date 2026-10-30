---
title: "List groupResource objects"
description: "Get a list of the groupResource objects and their properties."
author: "kwshea"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 08/25/2026
---

# List groupResource objects

Namespace: microsoft.graph

Get a list of the [groupResource](../resources/groupresource.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "privilegedaccessgroup_list_resources" } -->
[!INCLUDE [permissions-table](../includes/permissions/privilegedaccessgroup-list-resources-permissions.md)]

> [!NOTE]
> In delegated scenarios that use work or school accounts, any Microsoft Entra ID member user can call this API if the required permissions are granted.

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /identityGovernance/privilegedAccess/group/resources
```

## Query parameters

This method supports the `$filter` and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name | Description |
|:-----|:------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [groupResource](../resources/groupresource.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_privilegedaccessgroup_groupresources"
} -->
```http
GET https://graph.microsoft.com/v1.0/identityGovernance/privilegedAccess/group/resources
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "name": "list_privilegedaccessgroup_groupresources",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.groupResource)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/privilegedAccess/group/resources",
  "value": [
    {
      "id": "b88fc7b0-a4ff-45fc-82c4-1d31a807315e"
    },
    {
      "id": "a13fc7b0-a4ff-45fc-82c4-1d31a807426a"
    }
  ]
}
```
