---
title: "Get longRunningOperation"
description: "Retrieve the status of a long-running operation."
ms.localizationpriority: medium
author: "mmcla"
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# Get longRunningOperation

Namespace: microsoft.graph


Retrieve the status of a long-running operation, represented by a [longRunningOperation](../resources/longrunningoperation.md) object. A long-running operation is initiated when you [reset a user's password](authenticationmethod-resetpassword.md). This resource type is also the base type for the richLongRunningOperation object that represents the status of a long-running operation on a [site](../resources/site.md) or a [list](../resources/list.md).

The possible states of the long-running operation are `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue` where `succeeded` and `failed` are terminal states.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions acting on self (from least to most privileged) | Permissions acting on others (from least to most privileged)|
|:---------------------------------------|:-------------------------|:-----------------|
| Delegated (work or school account)     | UserAuthenticationMethod.Read, UserAuthenticationMethod.Read.All, UserAuthenticationMethod.ReadWrite, UserAuthenticationMethod.ReadWrite.All | UserAuthenticationMethod.Read.All, UserAuthenticationMethod.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. | Not supported. |
| Application                            | Not supported. | Not supported. |

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /users/{id | userPrincipalName}/authentication/operations/{id}
```

## Optional query parameters

This method does not support optional query parameters to customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [longRunningOperation](../resources/longrunningoperation.md) object in the response body.

## Examples

### Request

The following is an example of the request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_longrunningoperation"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/{id | userPrincipalName}/authentication/operations/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-longrunningoperation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-longrunningoperation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-longrunningoperation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-longrunningoperation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-longrunningoperation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-longrunningoperation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.longRunningOperation"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "status": "running",
  "createdDateTime": "2020-03-19T12-01-03.45Z",
  "lastActionDateTime": "2020-03-19T12-01-04.23Z",
  "id": "2d497bb-57bd-47a6-8749-5ccd0869f2bd"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get operation",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
