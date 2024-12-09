---
title: "List onOtpSendCustomExtension objects"
description: "Get a list of onOtpSendCustomExtension objects and their properties."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 12/09/2024
---

# List onOtpSendCustomExtension objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "onotpsendcustomextensionhandler-list-customextension-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/onotpsendcustomextensionhandler-list-customextension-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/authenticationEventListeners/{listenerId}/microsoft.graph.OnEmailOtpSendListener/handler/microsoft.graph.OnOtpSendCustomExtensionHandler/customExtension
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_onotpsendcustomextension"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/authenticationEventsFlows/0313cc37-d421-421d-857b-87804d61e33e/microsoft.graph.OnEmailOtpSendListener/handler/microsoft.graph.OnOtpSendCustomExtensionHandler/customExtension
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.onOtpSendCustomExtension)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.onOtpSendCustomExtension",
      "id": "1c8b03b2-7663-fbe9-960a-bc541decd469",
      "authenticationConfiguration": {
        "@odata.type": "microsoft.graph.customExtensionAuthenticationConfiguration"
      },
      "clientConfiguration": {
        "@odata.type": "microsoft.graph.customExtensionClientConfiguration"
      },
      "description": "String",
      "displayName": "String",
      "endpointConfiguration": {
        "@odata.type": "microsoft.graph.customExtensionEndpointConfiguration"
      }
    }
  ]
}
```

