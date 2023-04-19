---
title: "Get hostCookie"
description: "Read the properties and relationships of a hostCookie object."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get hostCookie

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [hostCookie](../resources/security-hostcookie.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ThreatIntelligence.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|ThreatIntelligence.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/threatIntelligence/hostCookies/{hostCookieId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.hostCookie](../resources/security-hostcookie.md) object in the response body.

## Examples

### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_hostcookie",
  "sampleKeys": ["c2VjdXJlbWFpbC5jb250b3NvLmNvbSQkT0lEQyQkc2VjdXJlbWFpbC5jb250b3NvLmNvbQ=="]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/hostCookies/c2VjdXJlbWFpbC5jb250b3NvLmNvbSQkT0lEQyQkc2VjdXJlbWFpbC5jb250b3NvLmNvbQ==
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-hostcookie-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-hostcookie-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-hostcookie-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-hostcookie-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-hostcookie-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-hostcookie-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.hostCookie"
}
-->
``` json
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.hostCookie",
    "id": "c2VjdXJlbWFpbC5jb250b3NvLmNvbSQkT0lEQyQkc2VjdXJlbWFpbC5jb250b3NvLmNvbQ==",
    "firstSeenDateTime": "2022-02-26T07:23:34.558Z",
    "lastSeenDateTime": "2023-02-28T04:57:15.288Z",
    "domain": "securemail.contoso.com",
    "name": "OIDC",
    "host": {
        "id": "securemail.contoso.com"
    }
  }
}
```
