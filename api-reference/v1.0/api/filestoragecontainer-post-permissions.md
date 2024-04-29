---
title: "Create permission"
description: "Add a permission to a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Create permission


Namespace: microsoft.graph

Add a [permission](../resources/permission.md) to a [fileStorageContainer](../resources/filestoragecontainer.md). 


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_post_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-post-permissions-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storage/fileStorage/containers/{containerId}/permissions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [permission](../resources/permission.md) object with the following properties.

|     Name    |                              Type                              | Description                                                                |
|:-----------:|:--------------------------------------------------------------:|----------------------------------------------------------------------------|
| roles       | Collection(String)                                             | The type of permissions. Either `reader`, `writer`, `manager`, or `owner`. |
| grantedToV2 | [sharePointIdentitySet](../resources/sharepointidentityset.md) | For user type permissions, the details of the user for this permission.    |

## Response

If successful, this method returns a `201 Created` response code and a [permission](../resources/permission.md) object in the response body.

## Examples

### Request
The following example shows how to add a new user as a reader to a container.
<!-- {
  "blockType": "request",
  "name": "create_permission",
  "@odata.type": "microsoft.graph.permission"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/permissions
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

