---
title: "Get sharePointGroupMember"
description: "Read the properties and relationships of a sharePointGroupMember object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# Get sharePointGroupMember

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [sharePointGroupMember](../resources/sharepointgroup.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "ignored",
  "name": "sharepointgroupmember-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/sharepointgroupmember-get-permissions.md)]

| Permission type                        | Least privileged permissions  | Higher privileged permissions |
| :------------------------------------- | :---------------------------- | :---------------------------- |
| Delegated (work or school account)     | Not supported.                | Not supported.                |
| Delegated (personal Microsoft account) | Not supported.                | Not supported.                |
| Application                            | FileStorageContainer.Selected | Not available.                |

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `AddPermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containers/{fileStorageContainerId}/sharePointGroups/{sharePointGroupId}/members/{sharePointGroupMemberId}
```

## Optional query parameters

This method supports $select OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). The $select OData query parameter can be used the `id` and `identity` properties of the **sharePointGroupMember** object.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [sharePointGroupMember](../resources/sharepointgroupmember.md) object in the response body.

## Examples

### Request

The following example shows a request.

``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/10/members/aTowIy5mfG1lbWJlcnNoaXB8YWRtaW5AYTgzMGVkYWQ5MDUwODQ5c3Bncm91cHRlc3QyLm9ubWljcm9zb2Z0LmNvbQ
Content-Type: application/json

```

### Response

The following example shows the response.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.sharePointGroupMember",
    "id": "aTowIy5mfG1lbWJlcnNoaXB8YWRtaW5AYTgzMGVkYWQ5MDUwODQ5c3Bncm91cHRlc3QyLm9ubWljcm9zb2Z0LmNvbQ7",
    "identity": {
      "@odata.type": "microsoft.graph.sharePointIdentitySet",
      "user": {
        "displayName": "TestUser",
        "email": TestUser@testTenant.onmicrosoft.com
      }
    }
  }
}
```