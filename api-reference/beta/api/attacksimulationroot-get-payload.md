---
title: "Get payload"
description: "Get an attack simulation campaign payload for a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get payload

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an attack simulation campaign payload for a tenant.

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
GET /security/attackSimulation/payloads/{payloadId}
```

## Optional query parameters

This method supports the `$count`, `$filter`, `$orderby`, `$skipToken`, `$top`, and `$select` [OData query parameters](/graph/query-parameters) to help customize the response. You can use the `$filter` and `$orderby` query parameters on the **attackTechnique**, **attackType**, **completionDateTime**, **displayName**, **isAutomated**, **launchDateTime**, and **status** properties.

If the result set spans multiple pages, the response body contains an `@odata.nextLink` that you can use to page through the result set.

The following are examples of their use:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/payloads/{payloadId}?$count=true
GET /security/attackSimulation/payloads/{payloadId}?$filter={property} eq '{property-value}'
GET /security/attackSimulation/payloads/{payloadId}?$filter={property} eq '{property-value}'&$top=5
GET /security/attackSimulation/payloads/{payloadId}?$orderby={property}
GET /security/attackSimulation/payloads/{payloadId}?$skipToken={skipToken}
GET /security/attackSimulation/payloads/{payloadId}?$top=1
GET /security/attackSimulation/payloads/{payloadId}?$select={property}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [payload](../resources/payload.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_payload",
  "sampleKeys": ["f1b13829-3829-f1b1-2938-b1f12938b1a"]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/payload/f1b13829-3829-f1b1-2938-b1f12938b1a
```

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.payload"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/attackSimulation/payloads/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc",
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
    "attackTechnique": "credentialHarvesting",
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
    "detail" : null,
    "payloadTags": []
}
```
