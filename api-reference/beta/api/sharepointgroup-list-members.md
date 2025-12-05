---
title: "List members"
description: "Get a list of the sharePointGroupMember objects and their properties."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# List members

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [sharePointGroupMember](../resources/sharepointgroupmember.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharepointgroup_list_members" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharepointgroup-list-members-permissions.md)]

> [!NOTE]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `AddPermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /storage/fileStorage/containers/{fileStorageContainerId}/sharePointGroups/{sharePointGroupId}/members
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). You can `$filter` or `$orderby` by the **id** and **displayName** properties.

> [!NOTE]
> Only 100 **sharePointGroupMember** objects can be listed in a single request. Use the `$top` and `$skip` query parameters to efficiently retrieve all **sharePointGroupMember** objects within a [sharePointGroup](../resources/sharepointgroup.md).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [sharePointGroupMember](../resources/sharepointgroupmember.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_sharepointgroup_members"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/10/members
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-sharepointgroup-members-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-sharepointgroup-members-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-sharepointgroup-members-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-sharepointgroup-members-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-sharepointgroup-members-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-sharepointgroup-members-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.sharePointGroupMember)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.sharePointGroupMember",
      "id": "aTowIy5mfG1lbWJlcnNoaXB8YWRtaW5AYTgzMGVkYWQ5MDUwODQ5c3Bncm91cHRlc3QyLm9ubWljcm9zb2Z0LmNvbQ",
      "identity": {
        "@odata.type": "microsoft.graph.sharePointIdentitySet",
        "user": {
          "displayName": "Adele Vance",
          "email": "adele.vance@contoso.onmicrosoft.com"
        }
      }
    },
    {
      "id": "YzowdC5jfHRlbmFudHxiODg5YmFkMy1lMTBlLTQ5M2MtYWY3MC1mMDdlZGJkMDcyZWM",
      "identity": {
        "@odata.type": "microsoft.graph.sharePointIdentitySet",
        "user": {
          "displayName": "John Smith",
          "email": "john.smith@contoso.onmicrosoft.com"
        }
      }
    }
  ]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "List members",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
      "Error: /api/sharepointgroup-list-members.md:
      Failed to parse enumeration values for type microsoft.graph.list. Table requires a column header named one of the following: Member, Name, Value"
  ]
}-->
