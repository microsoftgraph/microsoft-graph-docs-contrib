---
title: "servicePrincipal: addTokenSigningCertificate"
description: "Add a signing certificate to a servicePrincipal."
ms.localizationpriority: medium
author: "alamaral"
ms.prod: "applications"
doc_type: "apiPageType"
---

# servicePrincipal: addTokenSigningCertificate

Namespace: microsoft.graph

Create a self-signed signing certificate and return a [selfSignedCertificate](../resources/selfsignedcertificate.md) object, which is the public part of the generated certificate. 

The self-signed signing certificate is composed of the following objects, which are added to the [servicePrincipal](../resources/serviceprincipal.md): 
+ The [keyCredentials](../resources/keycredential.md) object with the following objects:
    + A private key object with **usage** set to `Sign`.
    + A public key object with **usage** set to `Verify`.
+ The [passwordCredentials](../resources/passwordcredential.md) object. 


All the objects have the same value of **customKeyIdentifier**.

The **passwordCredential** is used to open the PFX file (private key). It and the associated private key object have the same value of **keyId**. When set during creation through the **displayName** property, the subject of the certificate cannot be updated. The **startDateTime** is set to the same time the certificate is created using the action. The **endDateTime** can be up to three years after the certificate is created.

## Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.ReadWrite.All, Directory.ReadWrite.All |
|Delegated (personal Microsoft account) | None.    |
|Application | Application.ReadWrite.OwnedBy, Application.ReadWrite.All, Directory.ReadWrite.All |


## HTTP request

You can address the service principal using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in the Azure portal.

<!-- { "blockType": "ignored" } -->

```http
POST /servicePrincipals/{id}/addTokenSigningCertificate
POST /servicePrincipals(appId='{appId}')/addTokenSigningCertificate
```

## Request body

In the request body, provide the following required properties.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| displayName | string | Friendly name for the key.  It must start with `CN=`.|
| endDateTime | DateTimeOffset |The date and time when the credential expires. It can be up to 3 years from the date the certificate is created. If not supplied, the default is three years from the time of creation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|

## Response

If successful, this method returns a `200 OK` response code and a new [selfSignedCertificate](../resources/selfsignedcertificate.md) object in the response body.

## Examples

### Request

The following is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "serviceprincipal_addtokensigningcertificate"
}-->

```http
POST https://graph.microsoft.com/v1.0/servicePrincipals/004375c5-6e2e-4dec-95e3-626838cb9f80/addTokenSigningCertificate
Content-type: application/json

{
    "displayName":"CN=customDisplayName",
    "endDateTime":"2024-01-25T00:00:00Z"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/serviceprincipal-addtokensigningcertificate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/serviceprincipal-addtokensigningcertificate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/serviceprincipal-addtokensigningcertificate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/serviceprincipal-addtokensigningcertificate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/serviceprincipal-addtokensigningcertificate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/serviceprincipal-addtokensigningcertificate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.selfSignedCertificate"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#microsoft.graph.selfSignedCertificate",
  "customKeyIdentifier": "2iD8ppbE+D6Kmu1ZvjM2jtQh88E=",
  "displayName": "CN=customDisplayName",
  "endDateTime": "2024-01-25T00:00:00Z",
  "key": "MIICuDCCAaCgAwIBAgIIYXJsNtL4oUMwDQYJKoZIhvcNAQEL...StP8s/w==",
  "keyId": "93bc223f-7235-4b9c-beea-d66847531c49",
  "startDateTime": "2021-05-05T18:38:51.8100763Z",
  "thumbprint": "DA20FCA696C4F83E8A9AED59BE33368ED421F3C1",
  "type": "AsymmetricX509Cert",
  "usage": "Verify"
}
```
<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2021-01-15 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "servicePrincipal: selfSignedCertificate",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
} -->

