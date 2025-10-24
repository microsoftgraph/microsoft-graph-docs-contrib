---
title: "Create sharePointGroup"
description: "Create a new sharePointGroup object."
author: "tmarwendo-microsoft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 1/31/2025
---

# Create sharePointGroup

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [sharePointGroup](../resources/sharepointgroup.md) object. The **sharePointGroup** only exists within the scope of the [fileStorageContainer](../resources/filestoragecontainer.md) in which it was created. To add permissions for the **sharePointGroup** on [driveItem](../resources/driveitem.md) objects, you must use the [Create permission on a driveItem](./driveitem-post-permissions.md) API. Up to 10,000 **sharePointGroup** objects can be created per **fileStorageContainer**. For more information on service limits, see [SharePoint online limits](/office365/servicedescriptions/sharepoint-online-service-description/sharepoint-online-limits#sharepoint-groups).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_post_sharepointgroups" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-post-sharepointgroups-permissions.md)]

> [!NOTE]
> In addition to Microsoft Graph permissions, applications calling this API must at least have the `AddPermissions` container type-level permission on the container type of the corresponding containers. For more information, see [container types](/sharepoint/dev/embedded/concepts/app-concepts/containertypes). To learn more about container type-level permissions, see [SharePoint Embedded authorization](/sharepoint/dev/embedded/concepts/app-concepts/auth#authorization).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /storage/fileStorage/containers/{fileStorageContainerId}/sharePointGroups
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [sharePointGroup](../resources/sharepointgroup.md) object.

You can specify the following properties when you create a **sharePointGroup**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|A user-visible description of the **sharePointGroup**. The description can't be longer than 512 characters. Optional.|
|title|String|The title of the **sharePointGroup**. The title can't be longer than 255 characters. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [sharePointGroup](../resources/sharepointgroup.md) object in the response body.

## Examples

### Request

The following example shows a request that creates a new **sharePointGroup** that is local to a **fileStoragContainer**. The title and description of the **sharePointGroup** are shown in the request body.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_sharePointGroup",
  "@odata.type": "microsoft.graph.sharePointGroup"
} -->
```http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/sharePointGroups
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sharePointGroup",
  "title": "Sample Group",
  "description": "This is a sample description"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-sharepointgroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-sharepointgroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-sharepointgroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-sharepointgroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-sharepointgroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-sharepointgroup-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response. The group is successfully created with a newly assigned ID that acts as an identifier.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.sharePointGroup"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.sharePointGroup",
  "id" : "4",
  "title": "Sample Group",
  "description": "This is sample description"
}
```
