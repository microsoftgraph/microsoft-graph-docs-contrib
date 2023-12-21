---
title: "List deleted items (directory objects) owned by a user"
description: "Retrieves a list of recently deleted application or group objects that are owned by the specified user."
author: "keylimesoda"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: apiPageType
---

# List deleted items (directory objects) owned by a user

Namespace: microsoft.graph

Retrieve a list of recently deleted [application](../resources/application.md) and [group](../resources/group.md) objects owned by the specified user.

This API returns up to 1,000 deleted objects owned by the user, sorted by ID, and doesn't support pagination.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "directory_deleteditems_getuserownedobjects" } -->
[!INCLUDE [permissions-table](../includes/permissions/directory-deleteditems-getuserownedobjects-permissions.md)]

## HTTP request

``` http
POST /directory/deletedItems/getUserOwnedObjects
```

## Request headers

| Name          | Description               |
| ------------- | ------------------------- |
| Authorization | Bearer {token}. Required. |

## Request body

The request body requires the following parameters:

| Parameter    | Type |Description|
|:---------------|:--------|:----------|
|userId|String|ID of the owner.|
|type|String|Type of owned objects to return; `Group` and `Application` are currently the only supported values.|

## Response

Successful requests return `200 OK` response codes; the response object includes [directory (deleted items)](../resources/directory.md) properties.

## Example

### Request

Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_directory_deleteditem_getuserownedobjects"
}-->
``` http
POST https://graph.microsoft.com/v1.0/directory/deletedItems/getUserOwnedObjects
Content-type: application/json

{
  "userId":"55ac777c-109e-4022-b58c-470c8fcb6892",
  "type":"Group"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-directory-deleteditem-getuserownedobjects-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Here is an example of the response. Note: This response object may be truncated for brevity. All supported properties are returned
from actual calls.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject",
  "isCollection": true
} -->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.group",
      "id": "bfa7033a-7367-4644-85f5-95aaf385cbd7",
      "deletedDateTime": "2018-04-01T12:39:16Z",
      "classification": null,
      "createdDateTime": "2017-03-22T12:39:16Z",
      "description": null,
      "displayName": "Test",
      "groupTypes": [
        "Unified"
      ],
      "mail": "Test@contoso.com",
      "mailEnabled": true,
      "mailNickname": "Test",
      "membershipRule": null,
      "membershipRuleProcessingState": null,
      "preferredDataLocation": null,
      "preferredLanguage": null,
      "proxyAddresses": [
        "SMTP:Test@contoso.com"
      ],
      "renewedDateTime": "2017-09-22T22:30:39Z",
      "securityEnabled": false,
      "theme": null,
      "visibility": "Public"
    }
  ]
}
```
