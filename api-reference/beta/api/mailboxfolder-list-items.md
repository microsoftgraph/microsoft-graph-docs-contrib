---
title: "List items"
description: "Get the mailboxItem collection within a specified folder in a mailbox."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# List items

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [mailboxItem](../resources/mailboxitem.md) collection within a specified folder in a mailbox.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailboxfolder-list-items-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailboxfolder-list-items-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}/items
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

If successful, this method returns a `200 OK` response code and a collection of [mailboxItem](../resources/mailboxitem.md) objects in the response body.

## Examples

### Example 1: List items

The following example shows how to get the mailbox items within a specified folder in a mailbox.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_mailboxitem"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==/items
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxItem"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders('NJWt2LeVEAAAIBDAAAAA==')/items",
    "value": [
        {
            "@odata.type": "#microsoft.graph.mailboxItem",
            "@odata.etag": "W/\"CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAE8zPIo\"",
            "id": "EDSVrdi3lRAAE9J-20AAA=",
            "createdDateTime": "2021-09-15T12:16:38Z",
            "lastModifiedDateTime": "2021-09-15T12:16:41Z",
            "changeKey": "CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAE8zPIo",
            "categories": [],
            "type": "IPM.Note",
            "size": 71133
        },
        {
            "@odata.type": "#microsoft.graph.mailboxItem",
            "@odata.etag": "W/\"CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAE8zO5W\"",
            "id": "EDSVrdi3lRAAE9J-2zAAA=",
            "createdDateTime": "2021-09-15T11:06:36Z",
            "lastModifiedDateTime": "2021-09-15T11:06:40Z",
            "changeKey": "CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAE8zO5W",
            "categories": [],
            "type": "IPM.Note",
            "size": 79968
        }
    ],
    "@odata.nextLink": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders('NJWt2LeVEAAAIBDAAAAA==')/items?%24skip=10"
}
```

### Example 2: List items using query parameter

The following example uses the `$filter`, `$select`, and `$top` query parameters. The `$filter` parameter refines the results and returns only items with **createdDateTime** between `2021-08-21` and `2021-09-16`.  The `$select` parameter specifies to return only a subset of the properties of each item in the response, and the `$top` parameter sets the page size of the result set to return only the top item in the mailbox under the specified folder.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_mailboxitem"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/Inbox/items?$filter=createdDateTime ge 2021-08-21 and createdDateTime lt 2021-09-16&$select=type,size&$top=1
```

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxItem"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 232

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders('Inbox')/items",
    "value": [
        {
            "@odata.type": "#microsoft.graph.mailboxItem",
            "@odata.etag": "W/\"CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAFOoqvk\"",
            "id": "EDSVrdi3lRAAE9J-2xAAA=",
            "type": "IPM.Note",
            "size": 91339
        }
    ],
    "@odata.nextLink": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders('Inbox')/items?%24filter=createdDateTime+ge+2021-08-21+and+createdDateTime+lt+2021-09-16&%24select=type%2csize&%24top=1&%24skip=1"
}
```
