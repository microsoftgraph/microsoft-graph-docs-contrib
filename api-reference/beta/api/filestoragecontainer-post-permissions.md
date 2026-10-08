---
title: "Create permission"
description: "Add a permission to an existing fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 05/19/2026
---

# Create permission


Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a [permission](../resources/permission.md) to an existing [fileStorageContainer](../resources/filestoragecontainer.md).

> [!IMPORTANT]
> Permissions added to a [fileStorageContainer](../resources/filestoragecontainer.md) apply to all its [driveItem](../resources/driveitem.md) objects, regardless of any unique or restrictive permissions applied to those items.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_post_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-post-permissions-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /storage/fileStorage/containers/{containerId}/permissions
```

## Path parameters

| Parameter | Type | Description |
|:---|:---|:---|
| containerId | String | The unique identifier of the [fileStorageContainer](../resources/filestoragecontainer.md). Required. |

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [permission](../resources/permission.md) object with the following properties.

|     Name    |                              Type                              | Description                                                                |
|:-----------:|:--------------------------------------------------------------:|----------------------------------------------------------------------------|
| @microsoft.graph.conflictBehavior | String | Controls the behavior when the target identity already exists in the container with a different role. Possible values are: `fail`, `replace`. The default value is `fail`. For `fail`, the API returns a `409 Conflict` response code with a `resourceModified` error if the identity already exists with a different role. For `replace`, the current role of the identity in the container is replaced. Optional. |
| grantedToV2 | [sharePointIdentitySet](../resources/sharepointidentityset.md) | For user type permissions, the details of the user for this permission.    |
| roles       | String collection                                             | The type of permissions. Either `reader`, `writer`, `manager`, or `owner`. |

## Response

If successful, this method returns a `201 Created` response code and a [permission](../resources/permission.md) object in the response body.

## Examples

### Example 1: Create a new permission for a user

The following example shows how to create a new permission for a user as a reader in a container.

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_permission",
  "@odata.type": "microsoft.graph.permission"
}
-->
```http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/permissions
Content-type: application/json

{
  "roles": ["reader"],
  "grantedToV2": {
    "user": {
      "userPrincipalName": "jacob@fabrikam.com"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-permission-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-permission-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-permission-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-permission-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-permission-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-permission-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.permission",
  "id": "cJpbmNpcGFsT3duZAJfaLowIy5mfG1lbWJliZXJzaGlwfHJvcnlicjExMUBvdXRsb29rLmNvbQ",
  "roles": ["reader"],
  "grantedToV2": {
    "user": {
      "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
      "userPrincipalName": "jacob@fabrikam.com",
      "displayName": "Jacob Hancock",
      "email": "jacob@fabrikam.com"
    }
  }
}
```

### Example 2: Replace an existing role when creating a permission

The following example shows how to change the existing role of an identity when **@microsoft.graph.conflictBehavior** is set to `replace`.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_permission_conflict_replace",
  "@odata.type": "microsoft.graph.permission"
}
-->
```http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/permissions
Content-type: application/json

{
  "@microsoft.graph.conflictBehavior": "replace",
  "roles": ["writer"],
  "grantedToV2": {
    "user": {
      "userPrincipalName": "jacob@fabrikam.com"
    }
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-permission-conflict-replace-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-permission-conflict-replace-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-permission-conflict-replace-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-permission-conflict-replace-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-permission-conflict-replace-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-permission-conflict-replace-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.permission",
  "id": "cJpbmNpcGFsT3duZAJfaLowIy5mfG1lbWJliZXJzaGlwfHJvcnlicjExMUBvdXRsb29rLmNvbQ",
  "roles": ["writer"],
  "grantedToV2": {
    "user": {
      "id": "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
      "userPrincipalName": "jacob@fabrikam.com",
      "displayName": "Jacob Hancock",
      "email": "jacob@fabrikam.com"
    }
  }
}
```

