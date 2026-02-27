---
title: "Update mailboxFolder"
description: "Update mailboxFolder properties such as the displayName within a mailbox."
author: "cparker-msft"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: apiPageType
---

# Update mailboxFolder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update [mailboxFolder](../resources/mailboxfolder.md) properties such as the **displayName** within a mailbox.

> [!NOTE]
> The folder **type** can't be updated. Instead, the folder needs to be deleted and a new folder can be created.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mailboxfolder_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/mailboxfolder-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}
PATCH /admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}/childFolders/{mailboxFolderId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the folder.|

## Response

If successful, this method returns a `200 OK` response code and an updated [mailboxFolder](../resources/mailboxfolder.md) object in the response body.

## Examples

### Request

The following example shows how to update certain folder properties of a mailbox folder.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_mailboxfolder",
  "sampleKeys": ["MBX:e0648f21@aab09c93", "AAMkAGVmMDEzM"]
}
-->
```http
PATCH https://graph.microsoft.com/beta/admin/exchange/mailboxes/MBX:e0648f21@aab09c93/folders/AAMkAGVmMDEzM

{
  "displayName": "Announcements",
  "singleValueExtendedProperties": [
        {
            "id": "String 0x3001",
            "value": "Announcements"
        }
    ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-mailboxfolder-javascript-snippets.md)]
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
HTTP/1.1 200 OK
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
