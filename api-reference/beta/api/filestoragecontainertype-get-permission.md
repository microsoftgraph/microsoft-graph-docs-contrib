---
title: "Get permission for a fileStorageContainerType"
description: "Get a specific permission from a fileStorageContainerType object."
author: "grjoseph"
ms.date: 02/27/2026
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Get permission for a fileStorageContainerType

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a specific [permission](../resources/permission.md) from a [fileStorageContainerType](../resources/filestoragecontainertype.md). The permission represents a user with management rights to the container type.

The calling user must be listed in the **permissions** collection for the container type with the `owner` role, or be a SharePoint Embedded Administrator or Global Administrator.

> [!NOTE]
> * Guest users can't perform this operation.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertype-get-permission-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertype-get-permission-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containerTypes/{fileStorageContainerTypeId}/permissions/{permissionId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [permission](../resources/permission.md) object in the response body.

## Examples

### Request

The following example shows a request to get a specific permission from a container type.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_permission_filestoragecontainertype"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containerTypes/de988700-d700-020e-0a00-0831f3042f00/permissions/b3duZXJfMTExMTExMTEtMTExMS0xMTExLTExMTEtMTExMTExMTExMTEx
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-permission-filestoragecontainertype-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.permission",
  "id": "b3duZXJfMTExMTExMTEtMTExMS0xMTExLTExMTEtMTExMTExMTExMTEx",
  "roles": ["owner"],
  "grantedToV2": {
    "user": {
      "id": "11111111-1111-1111-1111-111111111111"
    }
  }
}
```

