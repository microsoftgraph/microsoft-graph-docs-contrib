---
title: "List operations"
description: "Get a list of the delegatedAdminRelationshipOperation objects and their properties."
author: "koravvams"
ms.localizationpriority: medium
ms.subservice: partner-customer-administration
doc_type: apiPageType
ms.date: 04/05/2024
ms.custom: sfi-ga-nochange
---

# List operations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [delegatedAdminRelationshipOperation](../resources/delegatedadminrelationshipoperation.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "delegatedadminrelationship_list_operations" } -->
[!INCLUDE [permissions-table](../includes/permissions/delegatedadminrelationship-list-operations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/delegatedAdminRelationships/{delegatedAdminRelationshipId}/operations
```

## Optional query parameters
This method supports the `$expand`, `$select`, `$filter`, `$top`, `$count`, and `$skipToken`  [OData query parameters](/graph/query-parameters) to help customize the response.

`$top` supports up to 300 objects.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [delegatedAdminRelationshipOperation](../resources/delegatedadminrelationshipoperation.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_delegatedadminrelationshipoperation",
  "sampleKeys": ["5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836"]
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/delegatedAdminRelationships/5d027261-d21f-4aa9-b7db-7fa1f56fb163-8777b240-c6f0-4469-9e98-a3205431b836/operations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-delegatedadminrelationshipoperation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-delegatedadminrelationshipoperation-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-delegatedadminrelationshipoperation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-delegatedadminrelationshipoperation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-delegatedadminrelationshipoperation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-delegatedadminrelationshipoperation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-delegatedadminrelationshipoperation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-delegatedadminrelationshipoperation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.delegatedAdminRelationshipOperation)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/tenantRelationships/$metadata#operations",
  "value": [
    {
      "@odata.type": "#microsoft.graph.delegatedAdminRelationshipOperation",
      "@odata.etag": "W/\"JyIwMzAwZTM0ZS0wMDAwLTAyMDAtMDAwMC02MTRjZjI1YzAwMDAiJw==\"",
      "id": "e7de9158-df46-478e-820c-d6eff099d27b",
      "operationType": "delegatedAdminAccessAssignmentUpdate",
      "data": "{\"id\":\"a97a9b4c-f43e-4c47-bbd6-50d8d3c88d94\",\"accessContainer\":{\"accessContainerId\":\"11cc3849-c298-455f-9a11-b7be350ef352\",\"accessContainerType\":\"securityGroup\"},\"accessDetails\":{\"unifiedRoles\":[{\"roleDefinitionId\":\"f2ef992c-3afb-46b9-b7cf-a126ee74c451\"},{\"roleDefinitionId\":\"62e90394-69f5-4237-9190-012177145e10\"}]},\"status\":\"active\"}",
      "status": "succeeded",
      "createdDateTime": "2022-02-09T22:17:43.9821847Z",
      "lastModifiedDateTime": "2022-02-09T22:17:43.9821847Z"
    },
    {
      "@odata.type": "#microsoft.graph.delegatedAdminRelationshipOperation",
      "@odata.etag": "W/\"JyIwMzAwZTM0ZS0wMKMh5TAyMDAtMDAwMC02MTRjZjI1YzAwMDAiJw==\"",
      "id": "f7a7dad4-8cc4-40d7-be44-dd3501b1f4e0",
      "operationType": "delegatedAdminAccessAssignmentUpdate",
      "data": "{\"id\":\"a97a9b4c-f43e-4c47-bbd6-50d8d3c88d94\",\"accessContainer\":{\"accessContainerId\":\"8d56bce3-440f-4b4f-b5c2-cc0bcbd0199c\",\"accessContainerType\":\"securityGroup\"},\"accessDetails\":{\"unifiedRoles\":[{\"roleDefinitionId\":\"29232cdf-9323-42fd-ade2-1d097af3e4de\"},{\"roleDefinitionId\":\"88d8e3e3-8f55-4a1e-953a-9b9898b8876b\"}]},\"status\":\"active\"}",
      "status": "succeeded",
      "createdDateTime": "2022-02-11T20:32:05.4659288Z",
      "lastModifiedDateTime": "2022-02-11T20:34:42.9202474Z"
    }
  ]
}
```

