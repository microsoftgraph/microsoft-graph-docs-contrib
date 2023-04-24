---
title: "List requests"
description: "Get a list of the delegatedAdminRelationshipRequest objects and their properties."
author: "adtangir"
ms.localizationpriority: medium
ms.prod: "customer-relationship-management"
doc_type: apiPageType
---

# List requests
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| DelegatedAdminRelationship.Read.All, DelegatedAdminRelationship.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/requests
```

## Optional query parameters
This method supports the `$expand`, `$select`, `$filter`, `$top`, `$count`, and `$skipToken`  [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [delegatedAdminRelationshipRequest](../resources/delegatedadminrelationshiprequest.md) objects in the response body.

Each **delegatedAdminRelationshipRequest** object contains an **@odata.etag** property as per RFC2616.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_delegatedadminrelationshiprequest",
  "sampleKeys": ["5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836"]
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships/5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836/requests
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-delegatedadminrelationshiprequest-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-delegatedadminrelationshiprequest-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-delegatedadminrelationshiprequest-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-delegatedadminrelationshiprequest-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-delegatedadminrelationshiprequest-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.delegatedAdminRelationshipRequest)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/tenantRelationships/$metadata#requests",
  "value": [
    {
      "@odata.type": "#microsoft.graph.delegatedAdminRelationshipRequest",
      "@odata.etag": "W/\"JyIxODAwZTY4My0wMDAwLTAyMDAtMDAwMC02MTU0OWFmMDAwMDAiJw==\"",
      "id": "ae5a6b9e-6355-43dd-b708-48486b69c3ff",
      "action": "lockForApproval",
      "status": "succeeded",
      "createdDateTime": "2022-02-01T06:14:55.5398865Z",
      "lastModifiedDateTime": "2022-02-01T06:14:55.5398865Z"
    },
    {
      "@odata.type": "#microsoft.graph.delegatedAdminRelationshipRequest",
      "@odata.etag": "W/\"JyIxODAwZTY4My0wMDAwLTAyMDAtMDAwMC02MTU0OWFmMDAwMDAiJw==\"",
      "id": "8a1b6676-5c12-47ba-8d3a-1d38387b0909",
      "action": "terminate",
      "status": "running",
      "createdDateTime": "2022-03-02T06:11:55.5398865Z",
      "lastModifiedDateTime": "2022-03-02T06:11:55.5398865Z"
    }
  ]
}
```

