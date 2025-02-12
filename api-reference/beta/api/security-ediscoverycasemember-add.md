---
title: "Update ediscoveryCaseMember"
description: "Update the properties of a ediscoveryCaseMember object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 12/16/2024
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update ediscoveryCaseMember

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a ediscoveryCaseMember object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-ediscoverycasemember-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverycasemember-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /ediscoveryCaseMember
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
|recipientType|microsoft.graph.security.recipientType|**TODO: Add Description**. The possible values are: `user`, `roleGroup`, `unknownFutureValue`. Optional.|
|displayName|String|**TODO: Add Description** Optional.|
|smtpAddress|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.security.ediscoveryCaseMember](../resources/security-ediscoverycasemember.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_ediscoverycasemember"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/ediscoveryCaseMember
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.security.ediscoveryCaseMember",
  "recipientType": "String",
  "displayName": "String",
  "smtpAddress": "String"
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
  "@odata.type": "#microsoft.graph.security.ediscoveryCaseMember",
  "id": "333889ac-73a8-cb9a-7877-0a3c009f7e39",
  "recipientType": "String",
  "displayName": "String",
  "smtpAddress": "String"
}
```

