---
title: "onOtpSendCustomExtension: validateAuthenticationConfiguration"
description: "Validate the token sent in the authorization header."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 12/09/2024
---

# onOtpSendCustomExtension: validateAuthenticationConfiguration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Validate the token sent in the authorization header.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onotpsendcustomextension-validateauthenticationconfiguration-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onotpsendcustomextension-validateauthenticationconfiguration-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /onOtpSendCustomExtension/validateAuthenticationConfiguration
POST /onOtpSendCustomExtensionHandler/customExtension/validateAuthenticationConfiguration
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [authenticationConfigurationValidation](../resources/authenticationconfigurationvalidation.md) in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "onotpsendcustomextensionthis.validateauthenticationconfiguration"
}
-->
``` http
POST https://graph.microsoft.com/beta/onOtpSendCustomExtension/validateAuthenticationConfiguration
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationConfigurationValidation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "microsoft.graph.authenticationConfigurationValidation"
  }
}
```

