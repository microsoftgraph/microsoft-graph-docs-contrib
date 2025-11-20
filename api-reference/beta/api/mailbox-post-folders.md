---
title: "Create mailboxFolder"
description: "Create a new mailboxFolder or child mailboxFolder in a user's mailbox."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Create mailboxFolder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [mailboxFolder](../resources/mailboxfolder.md) or child **mailboxFolder** in a user's mailbox.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mailbox_post_folders" } -->
[!INCLUDE [permissions-table](../includes/permissions/mailbox-post-folders-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /admin/exchange/mailboxes/{mailboxId}/folders
POST /admin/exchange/mailboxes/{mailboxId}/folders/inbox/childFolders
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [mailboxFolder](../resources/mailboxfolder.md) object.

You can specify the following properties when you create a **mailboxFolder**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the folder. Required.|
|type|String|Describes the folder class type. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [mailboxFolder](../resources/mailboxfolder.md) object in the response body.

## Examples

### Request

The following example shows how to create a new mailbox folder.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_mailboxfolder_from_",
  "sampleKeys": ["MBX:e0648f21@aab09c93"]
}
-->
```http
POST https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0648f21@aab09c93/folders

{
  "displayName": "Announcements",
  "type": "IPF.Note",
  "singleValueExtendedProperties": [
        {
            "id": "String 0x3001",
            "value": "Announcements"
        }
    ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-mailboxfolder-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxFolder"
}
-->
```http
HTTP/1.1 201 Created
Content-type: application/json
Content-length: 179

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#admin/exchange/mailboxes('MBX%3A73c326ef%402829ab8a')/folders/$entity",
  "id": "AQMkAGUw==",
  "displayName": "Announcements",
  "parentFolderId": "AQMkAGUc==",
  "parentMailboxUrl": "https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0648f21@aab09c93",
  "childFolderCount": 0,
  "totalItemCount": 0,
  "type": "IPF.Note"
}
```
