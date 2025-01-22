---
title: "Get onOtpSendCustomExtension"
description: "Read the properties and relationships of an onOtpSendCustomExtension object."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 01/09/2025
---

# Get onOtpSendCustomExtension

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onotpsendcustomextension_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/onotpsendcustomextension-get-permissions.md)]

[!INCLUDE [rbac-custom-auth-ext-apis-read](../includes/rbac-for-apis/rbac-custom-auth-ext-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/authenticationEventListeners/{listenerId}/microsoft.graph.OnEmailOtpSendListener/handler/microsoft.graph.OnOtpSendCustomExtensionHandler/customExtension
```

## Optional query parameters

This method supports `$select` and `$expand` of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [onOtpSendCustomExtension](../resources/onotpsendcustomextension.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_onotpsendcustomextension"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/authenticationEventListeners/{listenerId}/microsoft.graph.OnEmailOtpSendListener/handler/microsoft.graph.OnOtpSendCustomExtensionHandler/customExtension
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-onotpsendcustomextension-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.onOtpSendCustomExtension"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.onOtpSendCustomExtension",
    "id": "1c8b03b2-7663-fbe9-960a-bc541decd469",
    "authenticationConfiguration": {
      "@odata.type": "microsoft.graph.azureAdTokenAuthentication",
      "resourceId": "api://customonemailprovider.azurwebsites.net/f9c5dc6b-d72b-4226-8ccd-801f7a290428"
    },
    "clientConfiguration": {
      "timeoutInMilliseconds": 1000,
      "maximumRetries": 1,
    },
    "description": "Sends OTP Code via ACS.",
    "displayName": "ACS Emails",
    "endpointConfiguration": {
      "@odata.type": "microsoft.graph.httpRequestEndpoint",
 	    "targetUrl": "https://customonemailprovider.azurewebsites.net/api/sendOneTimeCode"
    },
    "behaviorOnError": {
      "@odata.type": "microsoft.graph.customExtensionBehaviorOnError"
    }
  }
}
```
