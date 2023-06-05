---
title: "List trackers"
description: "Get a list of hostTracker resources."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List trackers

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [hostTracker](../resources/security-hosttracker.md) resources.

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
GET /security/threatIntelligence/hosts/{hostId}/trackers
```

## Optional query parameters

This method supports the `$count`, `$select`, `$top`, and `$skip` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) objects in the response body.

## Examples

### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_hosttracker",
  "sampleKeys": ["contoso.com"]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/hosts/contoso.com/trackers
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-hosttracker-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-hosttracker-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-hosttracker-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-hosttracker-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-hosttracker-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-hosttracker-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.hostTracker)"
}
-->
``` json
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.hostTracker",
      "id": "Y29udG9zby1hZHZlcnRpc2luZzkyNDEwQ29udG9zb0lkOTI0MTBhYm91dC5hZHMuY29udG9zby5jb20=",
      "firstSeenDateTime": "2019-06-13T17:25:22.761Z",
      "lastSeenDateTime": "2023-03-25T23:59:32.157Z",
      "kind": "ContosoId",
      "value": "contoso-advertising",
        "host": {
            "id": "about.ads.contoso.com"
        }
    }
  ]
}
```
