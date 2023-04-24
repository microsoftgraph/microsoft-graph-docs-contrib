---
title: "Get attackSimulationOperation"
description: "Get an attack simulation operation to track a long-running operation request for a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get attackSimulationOperation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an attack simulation operation to track a long-running operation request for a tenant.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | AttackSimulation.Read.All                   |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | AttackSimulation.Read.All                   |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/operations/{operationsId}
```

## Optional query parameters

This method does not currently support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [attackSimulationOperation](../resources/attacksimulationoperation.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_attackSimulationOperation",
  "sampleKeys": ["f1b13829-3829-f1b1-2938-b1f12938b1a"]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/operations/f1b13829-3829-f1b1-2938-b1f12938b1a
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-attacksimulationoperation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-attacksimulationoperation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-attacksimulationoperation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-attacksimulationoperation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-attacksimulationoperation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-attacksimulationoperation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.attackSimulationOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "id": "2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc",
   "tenantId": "2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3ss",
   "statusDetail": "Creating new simulation",
   "createdDateTime": "2022-01-12T05:27:18.7957961Z",
   "lastActionDateTime": "2022-01-12T05:27:18.7957961Z",
   "type": "createSimulation",
   "status": "notStarted",
   "percentageCompleted": 0
}
```
