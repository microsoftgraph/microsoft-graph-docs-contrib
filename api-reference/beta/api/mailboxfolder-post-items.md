---
title: "Create mailboxItem"
description: "Create a new mailboxItem object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 12/06/2024
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create mailboxItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new mailboxItem object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "mailboxfolder-post-items-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/mailboxfolder-post-items-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}/items
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [mailboxItem](../resources/mailboxitem.md) object.

You can specify the following properties when creating a **mailboxItem**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [Microsoft.OutlookServices.outlookItem](../resources/outlookitem.md). Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [Microsoft.OutlookServices.outlookItem](../resources/outlookitem.md). Optional.|
|changeKey|String|**TODO: Add Description** Inherited from [Microsoft.OutlookServices.outlookItem](../resources/outlookitem.md). Optional.|
|categories|String collection|**TODO: Add Description** Inherited from [Microsoft.OutlookServices.outlookItem](../resources/outlookitem.md). Optional.|
|type|String|**TODO: Add Description** Optional.|
|size|Int64|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [mailboxItem](../resources/mailboxitem.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_mailboxitem_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/admin/exchange/mailboxes/{mailboxId}/folders/{mailboxFolderId}/items
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.mailboxItem",
  "changeKey": "String",
  "categories": [
    "String"
  ],
  "type": "String",
  "size": "Integer"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxItem"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.mailboxItem",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "changeKey": "String",
  "categories": [
    "String"
  ],
  "id": "09ba4dd1-720c-6c51-8e93-b489eea7b3cf",
  "type": "String",
  "size": "Integer"
}
```

