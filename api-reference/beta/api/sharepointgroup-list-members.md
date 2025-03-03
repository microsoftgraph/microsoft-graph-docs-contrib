---
title: "List sharePointGroupMember objects"
description: "Get a list of the sharePointGroupMember objects and their properties."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# List sharePointGroupMember objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [sharePointGroupMember](../resources/sharepointgroupmember.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "sharepointgroup-list-members-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointgroup-list-members-permissions.md)]

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `AddPermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containers/{fileStorageContainerId}/sharePointGroups/{sharePointGroupId}/members
```

## Optional query parameters

This method supports $count, $filter, $orderby, $skip and $top OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). You can $filter or $orderby by the `id` and `displayName`fields.

> [!Note]
> Only 100 sharePointGroupMembers can be listed in a single request. Use the $top and $skip query parameters to
efficiently retrieve all sharePointGroupMembers within a sharePointGroup.

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

``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/10/members
Content-Type: application/json

```

### Response

The following example shows the response.

``` http
HTTP/1.1 200 OK
{
  "value": [
    {
      "@odata.type": "#microsoft.graph.sharePointGroupMember",
      "id": "aTowIy5mfG1lbWJlcnNoaXB8YWRtaW5AYTgzMGVkYWQ5MDUwODQ5c3Bncm91cHRlc3QyLm9ubWljcm9zb2Z0LmNvbQ",
      "identity": {
        "@odata.type": "microsoft.graph.sharePointIdentitySet",
        "user": {
          "displayName": "TestUser",
          "email": "TestUser@testTenant.onmicrosoft.com"
        }
      }
    },
    {
      "id": "YzowdC5jfHRlbmFudHxiODg5YmFkMy1lMTBlLTQ5M2MtYWY3MC1mMDdlZGJkMDcyZWM",
      "identity": {
        "@odata.type": "microsoft.graph.sharePointIdentitySet"
        "user": {
          "displayName": "TestUser2",
          "email": "TestUser2@testTenant.onmicrosoft.com"
        }
      }
    }
  ]
}
```