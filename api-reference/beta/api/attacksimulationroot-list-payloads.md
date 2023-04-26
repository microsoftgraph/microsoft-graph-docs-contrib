---
title: "List payloads"
description: "Get a list of payloads for attack simulation campaigns."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# List payloads

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of payloads for attack simulation campaigns. This operation expects the mandatory parameter **source** to filter and query the respective data source.

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
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant'
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, `$skipToken`, `$top`, and `$select` [OData query parameters](/graph/query-parameters) to help customize the response. You can use the `$filter` and `$orderby` query parameters on the **technique**, **simulationAttackType**, **completionDateTime**, **displayName**, **isAutomated**, **launchDateTime**, and **status** properties.

If the result set spans multiple pages, the response body contains an `@odata.nextLink` that you can use to page through the result set.

The following are examples of their use:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant' and $count=true
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant' and $filter={property} eq '{property-value}'
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant' and $filter={property} eq '{property-value}'&$top=5
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant' and $orderby={property}
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant' and $skipToken={skipToken}
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant' and $top=1
GET /security/attackSimulation/payloads?$filter=source eq 'Tenant' and $select={property}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [payload](../resources/payload.md) objects in the response body.

## Examples

### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_payload"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/payloads?$filter=source eq 'Tenant'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-payload-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-payload-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-payload-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-payload-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of a response.

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/attackSimulation/payloads?$filter=source eq 'Tenant'",
    "@odata.nextLink": "https://graph.microsoft.com/beta/security/attackSimulation/payloads?$filter=source+eq+%27Tenant%27&$skiptoken=MyZRVkZCUVVGQlFVRXZMeTh2THk4dkx5OHZPSGxCUVVGQk4yZDZMMFZwZFRjcmF6WjJURk14TWtKVk9WYzNaejA5",
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
            "detail" : null
        }
    ]
}
```
