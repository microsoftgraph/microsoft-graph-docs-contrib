---
title: "Create qrPin"
description: "Create a new qrPin object."
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.date: 02/27/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create qrPin

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new qrPin object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "qrcodepinauthenticationmethod-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/qrcodepinauthenticationmethod-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /authenticationMethodDevices/{authenticationMethodDevicesId}/hardwareOathDevices/{hardwareOathTokenAuthenticationMethodDeviceId}/assignTo/authentication/qrCodePinMethod/pin
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [qrPin](../resources/qrpin.md) object.

You can specify the following properties when creating a **qrPin**.

**TODO: Remove properties that don't apply**
|Property|Type|Description|
|:---|:---|:---|
|code|String|**TODO: Add Description** Required.|
|forceChangePinNextSignIn|Boolean|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|updatedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [qrPin](../resources/qrpin.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_qrpin_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/authenticationMethodDevices/{authenticationMethodDevicesId}/hardwareOathDevices/{hardwareOathTokenAuthenticationMethodDeviceId}/assignTo/authentication/qrCodePinMethod/pin
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrPin",
  "code": "String",
  "forceChangePinNextSignIn": "Boolean",
  "updatedDateTime": "String (timestamp)"
}
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.qrPin"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qrPin",
  "code": "String",
  "forceChangePinNextSignIn": "Boolean",
  "createdDateTime": "String (timestamp)",
  "updatedDateTime": "String (timestamp)"
}
```

