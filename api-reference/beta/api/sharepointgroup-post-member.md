---
title: "sharePointGroupMember: create"
description: "Create a sharePointGroupMember object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# sharePointGroupMember: create  

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [sharePointGroupMember](../resources/sharepointgroupmember.md) object.

A **sharePointGroupMember** object is created by invoking this API.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

| Permission type                        | Least privileged permissions  | Higher privileged permissions |
| :------------------------------------- | :---------------------------- | :---------------------------- |
| Delegated (work or school account)     | Not supported.                | Not supported.                |
| Delegated (personal Microsoft account) | Not supported.                | Not supported.                |
| Application                            | FileStorageContainer.Selected | Not available.                |

> [!Note]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `AddPermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#Authorization).

## HTTP request

``` http
POST /storage/fileStorage/containers/{containerId}/sharePointGroups/members
```

## Request headers

|Name|Description|
|:---|:---|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [sharePointGroupMember](../resources/sharepointgroupmember.md) resource  that includes a [sharePointIdentitySet](../resources/sharepointidentityset.md) to refer to the identity that is to be added to the [sharePointGroup](../resources/sharepointgroup.md).

Said `sharePointIdentitySet` may only contain one and only one of "user" or "group". 

If the `sharePointIdentitySet` contains "user", it should have one and only one of "id" or "userPrincipalName" to refer to the user identity.

If the `sharePointIdentitySet` contains "group", it should have one and only one of "id" or "email" to refer to the group identity. This group identity can only refer to an m365 group.

|Property|Type|Description|
|:---|:---|:---|
|identity|{"@odata.type": "microsoft.graph.sharePointIdentitySet"}|The identity of the **sharePointGroupMember**. Required.|

## Response

If successful, this action returns a `201 Created` response code with a json representation of the created **sharePointGroupMember**.

## Example 1: Create a sharePointGroupMember using their userPrincipalName

The following example adds a member to a sharePointGroup identified by `{sharePointGroupId}` that is under a container identified by `{containerId}`. We add the member via the member's userPrincipalName.

### Request

``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/10/members
Content-Type: application/json

{
    "identity":
    {
        "user":
        {
            "userPrincipalName" : "user0@contoso.com"
        }
    }
}
```

### Response

The following example shows a sample response with a json object representing the created member.

``` http
HTTP/1.1 201 Created
{
  "@odata.context": "https://contoso.sharepoint.com/_api/v2.1/$metadata#Collection(oneDrive.sharePointGroupMember)",
  "id": "aTowIy5mfG1lbWJlcnNoaXB8YWRtaW5AYTgzMGVkYWQ5MDUwODQ5c3Bncm91cHRlc3QyLm9ubWljcm9zb2Z0LmNvbQ",
  "identity": {
    "user": {
      "displayName": "TestUser",
      "email": "TestUser@testTenant.onmicrosoft.com"
      }
    }
}
```