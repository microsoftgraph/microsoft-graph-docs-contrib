---
title: "fileStorageContainer: getByUser"
description: "Get a list of fileStorageContainer objects that are owned by a user."
author: "shreyassinghmsft"
ms.date: 07/01/2026
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# fileStorageContainer: getByUser

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [fileStorageContainer](../resources/filestoragecontainer.md) objects that are owned by a user (either as `owner` or as `principalOwner`). You can also filter the results to only list containers for which the user is the `principalOwner`.

> [!IMPORTANT]
> - Only supported for delegated admin requests. Requests made without a user context (app-only authentication) or in a non-admin context aren't currently supported.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_getbyuser" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-getbyuser-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containers/getByUser(userPrincipalName='{userPrincipalName}')
GET /storage/fileStorage/containers/getByUser(userPrincipalName='{userPrincipalName}', role='{role}')
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|`userPrincipalName`|String|The user principal name of the user whose containers are being fetched. Required.|
|`role`|String|The user's role in the container. Allowed values are `owner` and `principalOwner`. Optional.|


## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [fileStorageContainer](../resources/filestoragecontainer.md) collection in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.getbyuser"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers/getByUser(userPrincipalName='user@contoso.onmicrosoft.com', role='owner')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/filestoragecontainerthisgetbyuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/filestoragecontainerthisgetbyuser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/filestoragecontainerthisgetbyuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/filestoragecontainerthisgetbyuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/filestoragecontainerthisgetbyuser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/filestoragecontainerthisgetbyuser-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.fileStorageContainer)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#storage/fileStorage/containers",
  "@odata.count": 1,
  "value": [
    {
      "@odata.type": "#microsoft.graph.fileStorageContainer",
      "id": "b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z",
      "displayName": "My File Storage Container",
      "containerTypeId": "e2756c4d-fa33-4452-9c36-2325686e1082",
      "createdDateTime": "2021-11-24T15:41:52.347Z",
      "ownershipType": "userOwned",
      "settings": {
        "isOcrEnabled": false
      }
    }
  ]
}
```

