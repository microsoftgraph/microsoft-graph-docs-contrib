---
title: "Handle archive mailbox redirects"
description: "Learn how to handle HTTP redirects when accessing folders and items in archive mailboxes with autoexpanded folders using the mailbox import and export APIs."
ms.localizationpriority: medium
author: "svempali"
ms.subservice: "outlook"
ms.topic: concept-article
ms.date: 04/23/2026
---

# Handle archive mailbox redirects

An archive mailbox can include a main archive mailbox and one or more auxiliary archive mailboxes (created through autoexpanding archive). Over time, folder contents might be distributed across these mailboxes.

In some cases, a folder appears in the main archive mailbox, but its contents actually reside in an auxiliary archive mailbox. This type of folder is called an *expanded folder*. It acts as a logical representation of the folder in the main archive, but the data itself is stored in a different archive mailbox.

When an application accesses an expanded folder, the API might return an HTTP redirect or error response. The response indicates the correct endpoint for accessing the content.

## How it works

- Your app makes a request to a folder or item using the main archive mailbox ID.
- If the target resides in an auxiliary archive, the API returns a redirect response (such as `HTTP 308 Permanent Redirect`) with a redirect URL.
- Your app makes a new request to the URL indicated in the response.

## Example 1: Redirect when accessing a folder

When you access a folder that physically resides in an auxiliary archive mailbox, the API returns an `HTTP 308 Permanent Redirect` with a `Location` header.

### Request
The following example shows a request.
<!-- {
  "blockType": "ignored"
}
-->
```http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==
```

### Response
The following example shows the response for the redirect.
```http
HTTP/1.1 308 Permanent Redirect
Content-Length: 0
Location: https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:767fh867@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==
```

### Follow-up request

Make a new request using the URL from the `Location` header.

```http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:767fh867@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==
```

## Example 2: Export items with an archive redirect response

When you export items from a mailbox that has autoexpanded archive folders, some items in the response might include an `ErrorArchiveFolderMovedPermanently` error instead of data. This indicates that the item physically resides in an auxiliary archive mailbox. Reissue the export request for those items using the URL provided in the error message.

### Response

The following example shows a response where one item is exported successfully and another requires a redirect.

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.exportItemResponse)",
    "value": [
        {
            "itemId": "AAMkADHGHGDDDSSAFDHGJ",
            "changeKey": "CQAAABYAAAC92FzB9+QsR5Q6SPVnShx0AAAAABQ/",
            "data": "AQAAAAgAAAAAAAAAAQAAAAQAA"
        },
        {
            "itemId": "AQMkADVmZgBkYzA2OSADDSG",
            "Error": {
                "message": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:5ffdc069-c31e-43fa-9542-eaf862ce18c0@601eaae7-815e-4d2e-9e48-109351d094ab/exportItems",
                "code": "ErrorArchiveFolderMovedPermanently"
            }
        }
    ]
}
```

For the item that returned `ErrorArchiveFolderMovedPermanently`, make a new POST request to the URL in the error message with the item ID to export it.

## Example 3: Import to an archive folder with redirect handling

When you attempt to import an item into a folder that physically resides in an auxiliary (autoexpanded) archive mailbox, you receive an `HTTP 409 Conflict` response that indicates the correct target mailbox.

### Response
The following example shows the response.
```http
HTTP/1.1 409 Conflict
Content-type: application/json

{
    "Message": "Invalid import session. The target session is expected in mailbox MBX:f10964a6-4fd0-4f74-8@4d2e-9e48-109351d094ab."
}
```

To resolve this issue, [create a new import session](/graph/api/mailbox-createimportsession?view=graph-rest-beta&preserve-view=true) targeting the mailbox ID indicated in the error message (in this case, `MBX:f10964a6-4fd0-4f74-8@4d2e-9e48-109351d094ab`). Use the [importUrl](/graph/api/resources/mailboxitemimportsession?view=graph-rest-beta&preserve-view=true#properties) property from the new session response to retry the import.

## Related content

- [Use the mailbox import and export APIs in Microsoft Graph (preview)](/graph/api/resources/mailbox-import-export-api-overview?view=graph-rest-beta&preserve-view=true)
- [mailbox: exportItems](/graph/api/mailbox-exportitems?view=graph-rest-beta&preserve-view=true)
- [mailbox: createImportSession](/graph/api/mailbox-createimportsession?view=graph-rest-beta&preserve-view=true)
