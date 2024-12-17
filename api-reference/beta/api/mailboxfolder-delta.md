---
title: "mailboxFolder: delta"
description: "Get a set of folders that have been added, deleted, or removed from the user's mailbox."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# mailboxFolder: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a set of folders that have been added, deleted, or removed from the user's mailbox.

A **delta** function call for folders in a mailbox is similar to a GET request, except that by appropriately applying [state tokens](/graph/delta-query-overview) in one or more of these calls, you can query for incremental changes in the folders. This allows you to maintain and synchronize a local store of a user's mail folders without having to fetch all the folders of that mailbox from the server every time.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailboxfolder-delta-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailboxfolder-delta-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/exchange/mailboxes/{mailboxId}/folders/delta
GET /admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}/childFolders/delta
```

## Query parameters

Tracking changes in folders incurs a round of one or more **delta** function calls. If you use any query parameter (other than `$deltatoken` and `$skiptoken`), you must specify it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters into the token portion of the `nextLink` or `deltaLink` URL provided in the response. You only need to specify any desired query parameters once upfront. In subsequent requests, simply copy and apply the `nextLink` or `deltaLink` URL from the previous response, as that URL already includes the encoded, desired parameters.

| Query parameter|Description|
|:----------------|:--------|
| $deltatoken|A [state token](/graph/delta-query-overview) returned in the `deltaLink` URL of the previous **delta** function call for the same folder collection, indicating the completion of that round of change tracking. Save and apply the entire `deltaLink` URL including this token in the first request of the next round of change tracking for that collection.|
| $skiptoken|A [state token](/graph/delta-query-overview) returned in the `nextLink` URL of the previous **delta** function call, indicating there are further changes to be tracked in the same folder collection.|

### OData query parameters

You can use a `$select` query parameter as in any GET request to specify only the properties your need for best performance. The _id_ & _parentMailboxUrl_ properties are always returned.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|
|Prefer|odata.maxpagesize={x}. Optional.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [mailboxFolder](../resources/mailboxfolder.md) collection in the response body.

## Examples

The following example shows how to make a single **delta** function call, and limit the maximum number of folders in the response body to 2.

To track changes in the folders of a mailbox, you would make one or more **delta** function calls, with appropriate state tokens, to get the set of incremental changes since the last delta query.

You can find a similar example that shows how to use the state tokens to track changes in the items of a folder: [Get incremental changes to messages in a folder](/graph/delta-query-messages). The main differences between tracking folders and tracking items in a folder are in the delta query request URLs, and the query responses returning **folder** rather than **item** collections.

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "mailboxfolderthis.delta"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/delta

Prefer: odata.maxpagesize=2
```

### Response

If the request is successful, the response would include a state token, which is either a _skipToken_ (in an _@odata.nextLink_ response header) or a _deltaToken_ (in an _@odata.deltaLink_ response header). Respectively, they indicate whether you should continue with the round or you have completed getting all the changes for that round.

The response below shows a _deltaToken_ in an _@odata.deltaLink_ response header.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.OutlookServices.mailboxFolder)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 254

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(mailboxFolder)",
    "@odata.deltaLink": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/delta?$deltatoken={_deltaToken_}",
    "value": [
        {
            "@odata.type": "#microsoft.graph.mailboxFolder",
            "displayName": "Inbound",
            "parentMailboxUrl": "https://graph.microsoft.com/beta/admin/Exchange/Mailboxes/MBX:e0643f21@a7809c93",
            "id": "AAMkAGUwNjQ4ZjIxLTQ3Y2YtNDViMi1iZjc4LTMzNjMwNWM0ZGE2YQAuAAAAAADbrwBIJbBSTKolRbhHUzSHAQCQ2fKdhq8oSKEDSVrdi3lRAAACgfP9AAA="
        },
        {
            "@odata.type": "#microsoft.graph.mailboxFolder",
            "displayName": "Outbound",
            "parentMailboxUrl": "https://graph.microsoft.com/beta/admin/Exchange/Mailboxes/MBX:e0643f21@a7809c93",
            "id": "AAMkAGUwNjQ4ZjIxLTQ3Y2YtNDViMi1iZjc4LTMzNjMwNWM0ZGE2YQAuAAAAAADbrwBIJbBSTKolRbhHUzSHAQCQ2fKdhq8oSKEDSVrdi3lRAAACgfP_AAA="
        }
    ]
}
```

## See also
- [Use delta query to track changes in Microsoft Graph data](https://docs.microsoft.com/en-us/graph/delta-query-overview)
- [Get incremental changes to items in a folder](./mailboxitem-delta.md)
