---
title: "mailboxItem: delta"
description: "Get a set of items that have been added, deleted, or updated in a specified folder."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# mailboxItem: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a set of items that have been added, deleted, or updated in a specified folder.

A **delta** function call for items in a folder is similar to a GET request, except that by appropriately applying [state tokens](/graph/delta-query-overview) in one or more of these calls, you can [query for incremental changes in the items in that folder](/graph/delta-query-messages). This allows you to maintain and synchronize a local store of a user's mailbox items without having to fetch the entire set of items from the server every time.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailboxitem-delta-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailboxitem-delta-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}/items/delta
```

## Query parameters

Tracking changes in items incurs a round of one or more **delta** function calls. If you use any query parameter (other than `$deltatoken` and `$skiptoken`), you must specify it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters into the token portion of the `nextLink` or `deltaLink` URL provided in the response. You only need to specify any desired query parameters once upfront. In subsequent requests, simply copy and apply the `nextLink` or `deltaLink` URL from the previous response, as that URL already includes the encoded, desired parameters.

| Query parameter|Description|
|:----------------|:-------|
| $deltatoken|A [state token](/graph/delta-query-overview) returned in the `deltaLink` URL of the previous **delta** function call for the same item collection, indicating the completion of that round of change tracking. Save and apply the entire `deltaLink` URL including this token in the first request of the next round of change tracking for that collection.|
|$skiptoken|A [state token](/graph/delta-query-overview) returned in the `nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same item collection.|

### OData query parameters

- You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The _id_ property is always returned.  
- Delta query support `$select`, `$top` for items.  
- There is limited support for `$filter` and `$orderby`:
  - The only supported `$filter` expresssions are `$filter=receivedDateTime+ge+{value}` or `$filter=receivedDateTime+gt+{value}`.
  - The only supported `$orderby` expression is `$orderby=receivedDateTime+desc`. If you do not include an `$orderby` expression, the return order is not guaranteed.  
- There is no support for `$search`.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|Prefer|odata.maxpagesize={x}. Optional.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [mailboxItem](../resources/mailboxitem.md) collection in the response body.

## Examples

The following example shows how to make a single **delta** function call, and limit the maximum number of items in the response body to 2.

To track changes in the items in a folder, you would make one or more **delta** function calls to get the set of incremental changes since the last delta query. 
For an example that shows a round of delta query calls, see [Get incremental changes to items in a folder](/graph/delta-query-messages).

### Request

The following example shows the request.
<!-- {
  "blockType": "request",
  "name": "mailboxitemthis.delta"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/AAMkAGUwNjQ4ZyTAAA=/items/delta
Prefer: odata.maxpagesize=2
```

### Response

If the request is successful, the response includes a state token, which is either a _skipToken_ (in an _@odata.nextLink_ response header) or a _deltaToken_ (in an _@odata.deltaLink_ response header). Respectively, they indicate whether you should continue with the round or you have completed getting all the changes for that round.

The following response shows a _skipToken_ in an **@odata.nextLink** response header.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.OutlookServices.mailboxItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json
Content-length: 337

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(mailboxItem)",
    "@odata.nextLink": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/AAMkAGUwNjQ4ZyTAAA=/items/delta?$skiptoken={_skipToken_}",
    "value": [
        {
            "@odata.type": "#microsoft.graph.mailboxItem",
            "@odata.etag": "W/\"CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAFR+6ZT\"",
            "createdDateTime": "2021-10-19T06:30:30Z",
            "lastModifiedDateTime": "2021-10-19T07:17:06Z",
            "changeKey": "CQAAABYAAACQ2fKdhq8oSKEDSVrdi3lRAAFR+6ZT",
            "categories": [],
            "type": "IPM.Note",
            "size": 75329,
            "id": "AAMkAGUwNjQ4ZyTAACQ2fKdhq8oSKEDSVrdi3lRAAFSX03WAAA="
        }
    ]
}
```

## Related content

- [Use delta query to track changes in Microsoft Graph data](/graph/delta-query-overview)
- [Get incremental changes to folders in a mailbox](./mailboxfolder-delta.md)
