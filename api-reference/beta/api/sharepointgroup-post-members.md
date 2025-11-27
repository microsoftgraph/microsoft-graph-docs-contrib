---
title: "Create sharePointGroupMember"
description: "Create a new sharePointGroupMember object within a sharePointGroup."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# Create sharePointGroupMember

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [sharePointGroupMember](../resources/sharepointgroupmember.md) object within a [sharePointGroup](../resources/sharepointgroup.md). A **sharePointGroup** can have up to 5,000 users. For more information on service limits, see [SharePoint online limits](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits#sharepoint-groups). Users and Microsoft 365 groups are supported as viable identities for **sharePointGroupMember**. The newly created **sharePointGroupMember** immediately inherits [driveItem](../resources/driveitem.md) permissions that have been granted to the **sharePointGroup**. It may take several minutes for substrate-related functionality, such as search and Copilot, to reflect the addition of the new **sharePointGroupMember**.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharepointgroup_post_members" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharepointgroup-post-members-permissions.md)]

> [!NOTE]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `AddPermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /storage/fileStorage/containers/{fileStorageContainerId}/sharePointGroups/{sharePointGroupId}/members
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [sharePointGroupMember](../resources/sharepointgroupmember.md) object.

You can specify the following property when you create a **sharePointGroupMember**.

|Property|Type|Description|
|:---|:---|:---|
|identity|[sharePointIdentitySet](../resources/sharepointidentityset.md)|The identity of the **sharePointGroupMember**. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [sharePointGroupMember](../resources/sharepointgroupmember.md) object in the response body.

## Examples

### Request

The following example shows a request that creates a **sharePointGroupMember** using their user principal name.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_sharepointgroup_members",
  "@odata.type": "microsoft.graph.sharePointGroupMember"
} -->
```http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups/10/members
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sharePointGroupMember",
  "identity": {
    "user": {
      "userPrincipalName": "john.smith@contoso.com"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-sharepointgroup-members-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-sharepointgroup-members-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-sharepointgroup-members-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-sharepointgroup-members-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-sharepointgroup-members-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-sharepointgroup-members-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response with a JSON object that represents the created member.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointGroupMember"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sharePointGroupMember",
  "id": "aTowIy5mfG1lbWJlcnNoaXB8YWRtaW5AYTgzMGVkYWQ5MDUwODQ5c3Bncm91cHRlc3QyLm9ubWljcm9zb2Z0LmNvbQ",
  "identity": {
    "@odata.type": "microsoft.graph.sharePointIdentitySet",
    "user": {
      "displayName": "John Smith",
      "email": "john.smith@contoso.onmicrosoft.com"
    }
  }
}
```
