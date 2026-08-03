---
title: "fileStorageContainer: transferPrincipalOwnership"
description: "Transfer the principal ownership of a user-owned fileStorageContainer from one user to another."
author: "anjkumari"
ms.date: 06/22/2026
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# fileStorageContainer: transferPrincipalOwnership

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Transfer the principal ownership of a user-owned [fileStorageContainer](../resources/filestoragecontainer.md) from one user to another. The principal owner is a special role whose lifecycle is tied to the container; when the principal owner is deleted from the tenant, the container is automatically deleted.

This action is restricted to enterprise (non-MSA) tenants and user-owned containers only. The caller must be a tenant administrator with either the Global Administrator or SharePoint Embedded Administrator role.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_transferprincipalownership" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-transferprincipalownership-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

> [!NOTE]
> When delegated permissions are used, the caller must be a tenant administrator with either the Global Administrator or SharePoint Embedded Administrator role.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storage/fileStorage/containers/{fileStorageContainerId}/transferPrincipalOwnership
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|transferTo|[identitySet](../resources/identityset.md)|The identity of the new principal owner. You can specify the user by either `user.id` or `user.userPrincipalName`. Required.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.transferprincipalownership"
}
-->
``` http
POST https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/transferPrincipalOwnership
Content-Type: application/json

{
  "transferTo": {
    "user": {
      "userPrincipalName": "newowner@contoso.com"
    }
  }
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": false
}
-->
``` http
HTTP/1.1 204 No Content
```
