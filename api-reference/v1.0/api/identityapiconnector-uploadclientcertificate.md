---
title: "identityApiConnector: uploadClientCertificate"
description: "Upload a PKCS 12 format key (PFX) to an API connectors authentication configuration."
ms.localizationpriority: medium
author: "nickgmicrosoft"
ms.subservice: "entra-sign-in"
doc_type: "apiPageType"
ms.date: 04/04/2024
---

# identityApiConnector: uploadClientCertificate

Namespace: microsoft.graph

Upload a PKCS 12 format key (.pfx) to an API connector's authentication configuration. The input is a base-64 encoded value of the PKCS 12 certificate contents. This method returns an [apiConnector](../resources/identityApiConnector.md).

[!INCLUDE [national-cloud-support](../../includes/global-china.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identityapiconnector_uploadclientcertificate" } -->
[!INCLUDE [permissions-table](../includes/permissions/identityapiconnector-uploadclientcertificate-permissions.md)]

[!INCLUDE [rbac-b2xb2c-user-flows-apis](../includes/rbac-for-apis/rbac-b2xb2c-user-flows-apis.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /identity/apiconnectors/{id}/uploadClientCertificate
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

|Property|Type|Description|
|:---|:---|:---|
|pkcs12Value|String| This is the field for sending the pfx content. The value should be a base-64 encoded version of the actual certificate content. Required.|
|password|String| This is the password for the pfx file. Required. If no password is used, must still provide a value of `""`.|

## Response

If successful, this method returns a `200 OK` response code and the [apiConnector](../resources/identityApiConnector.md) whose `authenticationConfiguration` contains the public information of the client certificate.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "identityapiconnector_uploadclientcertificate"
}-->

```http
POST https://graph.microsoft.com/v1.0/identity/apiconnectors/{id}/uploadClientCertificate
Content-type: application/json

{
    "pkcs12Value": "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA",
    "password": "<password>"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/identityapiconnector-uploadclientcertificate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/identityapiconnector-uploadclientcertificate-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/identityapiconnector-uploadclientcertificate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/identityapiconnector-uploadclientcertificate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/identityapiconnector-uploadclientcertificate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/identityapiconnector-uploadclientcertificate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/identityapiconnector-uploadclientcertificate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/identityapiconnector-uploadclientcertificate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** `authenticationConfiguration` in the response is of type [microsoft.graph.clientCertificateAuthentication](../resources/clientcertificateauthentication.md) because this represents the public information of uploaded certificates.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityApiConnector"
}
-->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/apiConnectors/$entity",
    "id": "45715bb8-13f9-4bf6-927f-ef96c102d394",
    "displayName": "My API connector",
    "targetUrl": "https://api.contoso.com/endpoint",
    "authenticationConfiguration": {
        "@odata.type": "#microsoft.graph.clientCertificateAuthentication",
        "certificateList": [
            {
                "thumbprint": "0EB255CC895477798BA418B378255204304897AD",
                "notAfter": 1666350522,
                "notBefore": 1508670522,
                "isActive": true
            }
        ]
    }
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed982019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "identityApiConnector: uploadClientCertificate",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
