---
title: "List passiveDnsReverse"
description: "Get a list of passiveDnsRecord resources."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List passiveDnsReverse

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [passiveDnsRecord](../resources/security-passivednsrecord.md) resources.

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
GET /security/threatIntelligence/hosts/{hostId}/passiveDnsReverse
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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.passiveDnsRecord](../resources/security-passivednsrecord.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_passivedns",
  "sampleKeys": ["contoso.com"]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/hosts/contoso.com/passiveDnsReverse
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-passivedns-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-passivedns-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-passivedns-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-passivedns-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-passivedns-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-passivedns-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.passiveDnsRecord)"
}
-->
``` json
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.passiveDnsRecord",
      "id": "bWljcm9zb2Z0LmNvbTcxNDA5MjAuMTAzLjg1LjMz",
      "firstSeenDateTime": "2022-04-18T10:31:12Z",
      "lastSeenDateTime": "2023-03-07T13:19:35Z",
      "collectedDateTime": "2023-03-07T13:59:34.735Z",
      "recordType": "CNAME",
      "parentHost": {
          "id": "contoso.com"
      },
      "artifact": {
          "@odata.type": "#microsoft.graph.security.hostname",
          "id": "www.contoso.com"
      }
    }
  ]
}
```
