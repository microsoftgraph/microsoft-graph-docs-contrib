---
title: "Get mailboxFolder"
description: "Read the properties and relationships of a mailboxFolder object."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Get mailboxFolder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a mailboxFolder object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailboxfolder-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailboxfolder-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}
GET /admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}/childFolders/{mailboxFolderId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [mailboxFolder](../resources/mailboxfolder.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_mailboxfolder"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxFolder"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders$entity",
    "@odata.type": "#microsoft.graph.mailboxFolder",
    "id": "NJWt2LeVEAAAIBDAAAAA==",
    "displayName": "Inbox",
    "parentFolderId": "NJWt2LeVEAAAIBCAAAAA==",
    "parentMailboxUrl": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93",
    "childFolderCount": 3,
    "totalItemCount": 58,
    "type": "IPF.Note"
}
```
