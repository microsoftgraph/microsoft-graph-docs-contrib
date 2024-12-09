---
title: "Update mailboxFolder"
description: "Update the properties of a mailboxFolder object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update mailboxFolder

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a mailboxFolder object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailboxfolder-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailboxfolder-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
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


**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Optional.|
|parentFolderId|String|**TODO: Add Description** Optional.|
|parentMailboxUrl|String|**TODO: Add Description** Optional.|
|childFolderCount|Int32|**TODO: Add Description** Optional.|
|totalItemCount|Int32|**TODO: Add Description** Optional.|
|type|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [mailboxFolder](../resources/mailboxfolder.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_mailboxfolder"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.mailboxFolder",
  "displayName": "String",
  "parentFolderId": "String",
  "parentMailboxUrl": "String",
  "childFolderCount": "Integer",
  "totalItemCount": "Integer",
  "type": "String"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.mailboxFolder",
  "displayName": "String",
  "parentFolderId": "String",
  "parentMailboxUrl": "String",
  "childFolderCount": "Integer",
  "totalItemCount": "Integer",
  "type": "String",
  "id": "9783b836-46c3-193e-45cd-c62fe0fcb9b8"
}
```

