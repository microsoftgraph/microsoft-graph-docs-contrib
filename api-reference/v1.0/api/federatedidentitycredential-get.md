---
title: "Get federatedIdentityCredential"
description: "Read the properties and relationships of a federatedIdentityCredential object."
author: "shahzad-khalid"
ms.localizationpriority: medium
ms.prod: "applications"
doc_type: apiPageType
---

# Get federatedIdentityCredential
Namespace: microsoft.graph


Read the properties and relationships of a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Application.ReadWrite.All    |
|Delegated (personal Microsoft account) |  Application.ReadWrite.All |
|Application | Application.ReadWrite.OwnedBy, Application.ReadWrite.All |


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /applications/{id}/federatedIdentityCredentials/{federatedIdentityCredentialId}

GET /applications/{id}/federatedIdentityCredentials/{federatedIdentityCredentialName}
```

## Optional query parameters
This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [federatedIdentityCredential](../resources/federatedidentitycredential.md) object in the response body.

## Examples

### Request



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_federatedidentitycredential"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/applications/acd7c908-1c4d-4d48-93ee-ff38349a75c8/federatedIdentityCredentials/bdad0963-4a7a-43ae-b569-e67e1da3f2c0
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-federatedidentitycredential-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-federatedidentitycredential-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-federatedidentitycredential-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-federatedidentitycredential-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-federatedidentitycredential-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-federatedidentitycredential-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.federatedIdentityCredential"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#applications('cd7c908-1c4d-4d48-93ee-ff38349a75c8')/federatedIdentityCredentials/$entity",
    "@odata.id": "https://graph.microsoft.com/v2/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/directoryObjects/$/Microsoft.DirectoryServices.Application('bcd7c908-1c4d-4d48-93ee-ff38349a75c8')/federatedIdentityCredentials('bdad0963-4a7a-43ae-b569-e67e1da3f2c0')/bdad0963-4a7a-43ae-b569-e67e1da3f2c0",
    "id": "bdad0963-4a7a-43ae-b569-e67e1da3f2c0",
    "name": "testing",
    "issuer": "https://login.microsoftonline.com/3d1e2be9-a10a-4a0c-8380-7ce190f98ed9/v2.0",
    "subject": "a7d388c3-5e3f-4959-ac7d-786b3383006a",
    "description": "This is my test  federated identity credential",
    "audiences": [
        "api://AzureADTokenExchange"
    ]
  }
}
```
