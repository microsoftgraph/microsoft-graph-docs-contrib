---
title: "sharePointGroupMember: get"
description: "Get a sharePointGroupMember object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroupMember: get  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets a [sharePointGroupMember](../resources/sharepointgroupmember.md) object from a [sharePointGroup](../resources/sharepointgroup.md).

A **sharePointGroupMember** object is retrieved by invoking this API.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

This API only supports application only permissions.

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Application                            | FileStorageContainer.Selected               |

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `AddPermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

``` http
GET /storage/fileStorage/containers/{containerId}/sharePointGroups/{sharePointGroupId}/members/{groupMemberId}
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body
No request body is supplied to this API.

## Response

If successful, this action returns a `200 OK` response code with a json representation of the retrieved **sharePointGroupMember**.

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
{
  "@odata.context": "https://contoso.sharepoint.com/_api/v2.1/$metadata#Collection(oneDrive.sharePointGroupMember)",
  "id": "aTowIy5mfG1lbWJlcnNoaXB8YWRtaW5AYTgzMGVkYWQ5MDUwODQ5c3Bncm91cHRlc3QyLm9ubWljcm9zb2Z0LmNvbQ",
  "identity": {
    "user": {
      "displayName": "TestUser",
      "email": TestUser@testTenant.onmicrosoft.com
      }
    }
}
```