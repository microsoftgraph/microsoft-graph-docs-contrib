---
title: "List payloads"
description: "Get a list of payloads for attack simulation campaigns."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 07/23/2024
---

# List payloads

Namespace: microsoft.graph

Get a list of payloads for attack simulation campaigns. This operation expects the mandatory parameter **source** to filter and query the respective data source.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "attacksimulationroot_list_payloads" } -->
[!INCLUDE [permissions-table](../includes/permissions/attacksimulationroot-list-payloads-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/payloads?$filter=source eq 'tenant'
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, `$skipToken`, `$top`, and `$select` [OData query parameters](/graph/query-parameters) to help customize the response. You can use the `$filter` and `$orderby` query parameters on the **technique**, **simulationAttackType**, **completionDateTime**, **displayName**, **isAutomated**, **launchDateTime**, and **status** properties.

If the result set spans multiple pages, the response body contains an `@odata.nextLink` that you can use to page through the result set.

The following list shows examples of their use:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant'&$count=true
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant'&{property} eq '{property-value}'
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant'&{property} eq '{property-value}' &$top=5
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant'&$filter={property} eq '{property-value}'
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant'&$filter={property} eq '{property-value}'&$top=5
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant'&$orderby={property}
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant'&$skipToken={skipToken}
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant'&$top=1
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant'&$select={property}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [payload](../resources/payload.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_payloads"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/attackSimulation/payloads?$filter=source eq 'Tenant'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-payloads-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-payloads-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-payloads-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-payloads-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-payloads-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-payloads-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-payloads-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.payload)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#security/attackSimulation/payloads?$filter=source eq 'Tenant'",
  "@odata.nextLink": "https://graph.microsoft.com/v1.0/security/attackSimulation/payloads?$filter=source+eq+%27Tenant%27&$skiptoken=MyZRVkZCUVVGQlFVRXZMeTh2THk4dkx5OHZPSGxCUVVGQk4yZDZMMFZwZFRjcmF6WjJURk14TWtKVk9WYzNaejA5",
  "value": [
    {
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
      "Brand": "microsoft",
      "payloadIndustry": "IT",
      "isCurrentEvent": false,
      "isControversial": false,
      "payloadTags": [],
      "detail": null
    }
  ]
}
```
