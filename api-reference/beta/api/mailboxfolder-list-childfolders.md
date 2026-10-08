---
title: "List childFolders"
description: "Get the mailboxFolder collection under the specified mailboxFolder in a mailbox."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# List childFolders

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [mailboxFolder](../resources/mailboxfolder.md) collection under the specified [mailboxFolder](../resources/mailboxfolder.md) in a mailbox.

By default, hidden child folders aren't returned. To include them, specify `includeHiddenFolders=true`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailboxfolder-list-childfolders-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailboxfolder-list-childfolders-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}/childFolders
```

## Query parameters

This method supports the following optional query parameter.

| Parameter | Type | Description |
|:---|:---|:---|
| includeHiddenFolders | Boolean | The default value is `false`. Set it to `true` to include both hidden and nonhidden child folders, and use the **isHidden** property to distinguish them. If you use `$select`, include **isHidden** to return the property.  |

This method also supports the `$select`, `$filter`, `$top`, `$skip`, `$orderby`, `$count`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [mailboxFolder](../resources/mailboxfolder.md) objects in the response body.

> [!NOTE]
> *Archive mailboxes with autoexpanded folders:* When the target folder physically resides in an auxiliary (autoexpanded) archive mailbox, this API might return a redirect response that points to the correct mailbox endpoint. For details, see [Handle archive mailbox redirects](/graph/handle-archive-mailbox-redirects).

## Examples

### Example 1: List child folders
The following example shows how to get the mailbox folder collection under a specified folder.
#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_mailboxfolder_childfolders",
  "sampleKeys": ["MBX:e0643f21@a7809c93", "NJWt2LeVEAAAIBDAAAAA=="]
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==/childFolders
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-mailboxfolder-childfolders-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-mailboxfolder-childfolders-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-mailboxfolder-childfolders-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-mailboxfolder-childfolders-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-mailboxfolder-childfolders-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-mailboxfolder-childfolders-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxFolder"
}
-->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders('NJWt2LeVEAAAIBDAAAAA==')/childFolders",
    "value": [
        {
            "@odata.type": "#microsoft.graph.mailboxFolder",
            "id": "EDSVrdi3lRAAEvNS16AAA=",
            "displayName": "Folder_1",
            "isHidden": false,
            "parentFolderId": "NJWt2LeVEAAAIBDAAAAA==",
            "parentMailboxUrl": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93",
            "childFolderCount": 0,
            "totalItemCount": 20,
            "wellKnownName": null,
            "type": "IPF.Note"
        },
        {
            "@odata.type": "#microsoft.graph.mailboxFolder",
            "id": "EDSVrdi3lRAAEED0yTAAA=",
            "displayName": "Folder_2",
            "isHidden": false,
            "parentFolderId": "NJWt2LeVEAAAIBDAAAAA==",
            "parentMailboxUrl": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93",
            "childFolderCount": 0,
            "totalItemCount": 1,
            "wellKnownName": null,
            "type": "IPF.Note"
        }
    ]
}
```

### Example 2: Include hidden child folders

The following example shows how to include both hidden and nonhidden immediate child folders. The query parameter doesn't make the request recursive.

#### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_mailboxfolder_childfolders_including_hidden",
  "sampleKeys": ["MBX:e0643f21@a7809c93", "NJWt2LeVEAAAIBDAAAAA=="]
}
-->
```http
GET https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0643f21@a7809c93/folders/NJWt2LeVEAAAIBDAAAAA==/childFolders?includeHiddenFolders=true&$select=id,displayName,isHidden
```

#### Response

The following example shows the response shortened for readability. If the response includes **@odata.nextLink**, use the entire URL unchanged to retrieve the next page.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.mailboxFolder)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "EDSVrdi3lRAAEvNS16AAA=",
      "displayName": "Folder_1",
      "isHidden": false
    },
    {
      "id": "EDSVrdi3lRAAEED0yUAAA=",
      "displayName": "Application data",
      "isHidden": true
    }
  ]
}
```
