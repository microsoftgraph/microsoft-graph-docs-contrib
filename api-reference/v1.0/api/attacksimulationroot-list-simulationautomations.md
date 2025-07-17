---
title: "List simulationAutomations"
description: "Get a list of attack simulation automations for a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List simulationAutomations
Namespace: microsoft.graph

Get a list of attack simulation automations for a tenant.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "attacksimulationroot_list_simulationautomations" } -->
[!INCLUDE [permissions-table](../includes/permissions/attacksimulationroot-list-simulationautomations-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/simulationAutomations
```

## Optional query parameters
This method supports the `$count`, `$filter`, `$orderby`, `$skip`, `$top`, and `$select` [OData query parameters](/graph/query-parameters) to help customize the response. You can use the `$filter` and `$orderby` query parameters on the **displayName** and **status** properties.

If the result set spans multiple pages, the response body contains an `@odata.nextLink` that you can use to page through the result set.

The following are examples of their use:

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/simulationAutomations?$count=true
GET /security/attackSimulation/simulationAutomations?$filter={property} eq '{property-value}'
GET /security/attackSimulation/simulationAutomations?$filter={property} eq '{property-value}'&$top=5
GET /security/attackSimulation/simulationAutomations?$orderby={property}
GET /security/attackSimulation/simulationAutomations?$skip={skipCount}
GET /security/attackSimulation/simulationAutomations?$top=1
GET /security/attackSimulation/simulationAutomations?$select={property}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [simulationAutomation](../resources/simulationautomation.md) objects in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_simulationautomation"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/security/attackSimulation/simulationAutomations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-simulationautomation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-simulationautomation-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-simulationautomation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-simulationautomation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-simulationautomation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-simulationautomation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-simulationautomation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-simulationautomation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.simulationAutomation",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.simulationAutomation",
      "id": "fbad62b0-b32d-b6ac-9f48-d84bbea08f96",
      "displayName": "Reed Flores",
      "description": "Sample Simulation Automation Description",
      "status": "running",
      "createdDateTime": "2022-01-01T01:01:01.01Z",
      "createdBy": {
        "id": "99af58b9-ef1a-412b-a581-cb42fe8c8e21",
        "displayName": "Reed Flores",
        "email": "reed@contoso.com"
      },
      "lastModifiedDateTime": "2022-01-01T01:01:01.01Z",
      "lastModifiedBy": {
        "id": "99af58b9-ef1a-412b-a581-cb42fe8c8e21",
        "displayName": "Reed Flores",
        "email": "reed@contoso.com"
      },
      "lastRunDateTime": "2022-01-01T01:01:01.01Z",
      "nextRunDateTime": "2022-01-01T01:01:01.01Z"
    }
  ]
}
```

