---
title: "Update arkoseFraudProtectionProvider"
description: "Update the properties of an arkoseFraudProtectionProvider object."
author: "more-rasika"
ms.date: 08/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update arkoseFraudProtectionProvider

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an arkoseFraudProtectionProvider object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "arkosefraudprotectionprovider-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/arkosefraudprotectionprovider-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /arkoseFraudProtectionProvider
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
|displayName|String|The display name of this Arkose fraud protection provider configuration. Inherited from [fraudProtectionProvider](../resources/fraudprotectionprovider.md). Required.|
|privateKey|String|Log into the Arkose Portal, find the value under Settings>Keys. If you need help with your keys, contact your Arkose Customer Success Manager. Required.|
|publicKey|String|Log into the Arkose Portal, find the value under Settings>Keys. If you need help with your keys, contact your Arkose Customer Success Manager. Required.|
|verifySubDomain|String|The verifySubDomain is used to invoke the Arkose service from the Microsoft authentication server. Request from your Arkose Customer Success Manager. Default value: verify-api. Required.|
|clientSubDomain|String|The clientSubDomain is used to invoke the Arkose service from the client application. Request from your Arkose Customer Success Manager. Default value: client-api. Required.|


## Response

If successful, this method returns a `200 OK` response code and an updated [arkoseFraudProtectionProvider](../resources/arkosefraudprotectionprovider.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_arkosefraudprotectionprovider"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/arkoseFraudProtectionProvider
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.arkoseFraudProtectionProvider",
  "displayName": "String",
  "publicKey": "String",
  "privateKey": "String",
  "clientSubDomain": "String",
  "verifySubDomain": "String"
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
  "@odata.type": "#microsoft.graph.arkoseFraudProtectionProvider",
  "id": "37156c9d-7b03-fc84-9125-3a60757d1ef6",
  "displayName": "String",
  "publicKey": "String",
  "privateKey": "String",
  "clientSubDomain": "String",
  "verifySubDomain": "String"
}
```

