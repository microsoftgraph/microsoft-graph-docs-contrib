---
title: "Get payload"
description: "Get an attack simulation campaign payload for a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 12/01/2024
---

# Get payload

Namespace: microsoft.graph

Get an attack simulation campaign payload for a tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "payload_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/payload-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/attackSimulation/payloads/{payloadId}
GET /security/attackSimulation/simulations/{simulationId}/payload
```

## Optional query parameters

This method doesn't currently support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [payload](../resources/payload.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_payload",
  "sampleKeys": ["f1b13829-3829-f1b1-2938-b1f12938b1a"]
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/attackSimulation/payloads/f1b13829-3829-f1b1-2938-b1f12938b1a
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-payload-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-payload-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-payload-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-payload-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-payload-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-payload-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-payload-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.payload"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/attackSimulation/payloads/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc",
  "id": "2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc",
  "name": "AttackSimTest Payload",
  "description": "AttackSim Test Payload",
  "simulationAttackType": "social",
  "platform": "email",
  "isAutomated": null,
  "status": "draft",
  "source": "tenant",
  "language": "en",
  "predictedCompromiseRate": 20.0,
  "complexity": "medium",
  "technique": "credentialHarvesting",
  "createdBy": {
    "email": "faiza@contoso.com",
    "id": "121212",
    "displayName": "Faiza"
  },
  "createdDateTime": "2022-01-12T03:15:01.5906699Z",
  "lastModifiedBy": {
    "email": "faiza@contoso.com",
    "id": "121212",
    "displayName": "Faiza"
  },
  "lastModifiedDateTime": "2021-10-07T12:23:18.8157586Z",
  "theme": "personalizedOffer",
  "brand": "microsoft",
  "industry": "IT",
  "isCurrentEvent": false,
  "isControversial": false,
  "detail": null,
  "payloadTags": []
}
```
