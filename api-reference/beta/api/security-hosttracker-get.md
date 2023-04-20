---
title: "Get hostTracker"
description: "Read the properties and relationships of a hostTracker object."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get hostTracker

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [hostTracker](../resources/security-hosttracker.md) object.

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
GET /security/threatIntelligence/hostTrackers/{hostTrackerId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.hostTracker](../resources/security-hosttracker.md) object in the response body.

## Examples

### Request

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_hosttracker",
  "sampleKeys": ["Y29udG9zby1hZHZlcnRpc2luZzkyNDEwQ29udG9zb0lkOTI0MTBhYm91dC5hZHMuY29udG9zby5jb20="]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/threatIntelligence/hostTrackers/Y29udG9zby1hZHZlcnRpc2luZzkyNDEwQ29udG9zb0lkOTI0MTBhYm91dC5hZHMuY29udG9zby5jb20=
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-hosttracker-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-hosttracker-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-hosttracker-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-hosttracker-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-hosttracker-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.hostTracker"
}
-->
``` json
HTTP/1.1 200 OK
Content-Type: application/json

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
```
