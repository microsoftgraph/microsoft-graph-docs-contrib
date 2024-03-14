---
title: "Get loginPage"
description: "Get a loginPage associated with an attack simulation campaign for a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# Get loginPage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [loginPage](../resources/loginpage.md) associated with an attack simulation campaign for a tenant. Login pages are shown to users in attack simulations that use _credential harvest_ and _link in attachment_ social engineering techniques.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                            |
|:---------------------------------------|:-----------------------------------------------------------------------|
| Delegated (work or school account)     | AttackSimulation.Read.All, AttackSimulation.ReadWrite.All              |
| Delegated (personal Microsoft account) | Not supported.                                                         |
| Application                            | AttackSimulation.Read.All, AttackSimulation.ReadWrite.All              |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/loginPages/{loginPageId}
GET /security/attackSimulation/simulations/{simulationId}/loginPage
```

## Optional query parameters

This method does not currently support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [loginPage](../resources/loginpage.md) object in the response body.

## Examples

### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_loginpage"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/loginPages/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-loginpage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-loginpage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-loginpage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-loginpage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-loginpage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-loginpage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-loginpage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-loginpage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.loginPage"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc",
    "diplayName": "AttackSimTest loginPage",
    "description": "AttackSim Test loginPage",
    "status": "draft",
    "source": "tenant",
    "language": "en",
    "createdBy": {
      "email": "alexwaber@contoso.com",
      "id": "1rdfcb49-1065-46a6-b1c3-672071e20a6b",
      "displayName": "Alex Waber"
    },
    "createdDateTime": "2022-01-12T03:15:01.5906699Z",
    "lastModifiedBy": {
      "email": "alexwaber@contoso.com",
      "id": "1rdfcb49-1065-46a6-b1c3-672071e20a6b",
      "displayName": "Alex Waber"
    },
    "lastModifiedDateTime": "2021-10-07T12:23:18.8157586Z",
    "content": "<meta http-equiv=\"Content-Type\" content=\"text/html>\">"
}
```
