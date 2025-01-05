---
title: "List folders"
description: "Get all the mailboxFolder objects in the specified mailbox, including any search folders."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# List folders

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all the [mailboxFolder](../resources/mailboxfolder.md) objects in the specified mailbox, including any search folders.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailbox-list-folders-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailbox-list-folders-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/exchange/mailboxes/{mailboxId}/folders
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

If successful, this method returns a `200 OK` response code and a collection of [mailboxFolder](../resources/mailboxfolder.md) objects in the response body.

## Examples

### Example 1: List folders

The following example shows how to get the **mailboxFolder** collection directly under the root folder of the user's mailbox.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_mailboxfolder"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders
```

#### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders",
    "value": [
        {
            "@odata.type": "#microsoft.graph.mailboxFolder",
            "id": "EDSVrdi3lRAAACgfQBAAA=",
            "displayName": "Archive",
            "parentFolderId": "NJWt2LeVEAAAIBCAAAAA==",
            "parentMailboxUrl": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93",
            "childFolderCount": 0,
            "totalItemCount": 2,
            "type": "IPF.Note"
        },
        {
            "@odata.type": "#microsoft.graph.mailboxFolder",
            "id": "NJWt2LeVEAAAIBDQAAAA==",
            "displayName": "Calendar",
            "parentFolderId": "NJWt2LeVEAAAIBCAAAAA==",
            "parentMailboxUrl": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93",
            "childFolderCount": 5,
            "totalItemCount": 6,
            "type": "IPF.Appointment"
        }
    ],
    "@odata.nextLink": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders?%24skip=10"
}
```

### Example 2: List folders with query parameters

The following example uses the `$filter`, `$select`, and `$top` query parameters. The `$filter` parameter refines the results and returns only folders of **type** `IPF.Appointment`. The `$select` parameter is specified to return only the **displayName** and **type** properties, and the `$top` parameter sets the page size of the result set to return the first five folders in the mailbox.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_mailboxfolder"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders?$filter=type eq 'IPF.Appointment'&$select=displayName,type&$top=5
```

#### Response

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders",
    "value": [
        {
            "@odata.type": "#microsoft.graph.mailboxFolder",
            "id": "NJWt2LeVEAAAIBDQAAAA==",
            "displayName": "Calendar",
            "parentMailboxUrl": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93",
            "type": "IPF.Appointment"
        }
    ]
}
```
