---
title: "List businessScenarioTasks"
description: "Get a list of the businessScenarioTask objects and their properties."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.subservice: "business-scenarios"
doc_type: apiPageType
ms.date: 04/04/2024
---

# List businessScenarioTasks
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [businessScenarioTask](../resources/businessscenariotask.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "businessscenarioplanner_list_tasks" } -->
[!INCLUDE [permissions-table](../includes/permissions/businessscenarioplanner-list-tasks-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/businessScenarios/{businessScenarioId}/planner/tasks?$filter=businessScenarioProperties/externalObjectId eq '{externalObjectId}'
GET /solutions/businessScenarios/{businessScenarioId}/planner/tasks?$filter=businessScenarioProperties/externalContextId eq '{externalContextId}'
GET /solutions/businessScenarios/{businessScenarioId}/planner/tasks?$filter=target/microsoft.graph.businessScenarioGroupTarget/groupId eq '{groupId}'
```

## Query parameters

This method requires the `$filter` (`eq`) query parameter to scope the request to an **externalObjectId**, **externalContextId**, or a **groupId**.

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [businessScenarioTask](../resources/businessscenariotask.md) objects in the response body.

## Examples

### Example 1: Get tasks associated with a specific externalObjectId

The following example shows a request that gets all tasks associated with a specific external ID.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_businessscenariotask_e1",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/tasks?$filter=businessScenarioProperties/externalObjectId eq 'Order#12010'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-businessscenariotask-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-businessscenariotask-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-businessscenariotask-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-businessscenariotask-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-businessscenariotask-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-businessscenariotask-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-businessscenariotask-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.businessScenarioTask)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.businessScenarioTask",
      "title": "Customer order #12010",
      "percentComplete": 0,
      "priority": 5,
      "id": "pmc1rS1Io0C3rXQhyXIsNmUAOeIi",
      "target": {
        "@odata.type": "microsoft.graph.businessScenarioGroupTarget",
        "taskTargetKind": "group",
        "groupId": "7a339254-4b2b-4410-b295-c890a16776ee"
      },
      "businessScenarioProperties": {
        "externalObjectId": "Order#12010",
        "externalContextId": "Warehouse-CA-36",
        "externalObjectVersion": "000001",
        "webUrl": "https://ordertracking.contoso.com/view?id=12010",
        "externalBucketId": "deliveryBucket"
      }
    }
  ]
}
```

### Example 2: Get tasks associated with a specific externalContextId

The following example shows a request that gets all tasks associated with a specific context.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_businessscenariotask_e2",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/tasks?$filter=businessScenarioProperties/externalContextId eq 'Warehouse-CA-36'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-businessscenariotask-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-businessscenariotask-e2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-businessscenariotask-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-businessscenariotask-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-businessscenariotask-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-businessscenariotask-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-businessscenariotask-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-businessscenariotask-e2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.businessScenarioTask)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.businessScenarioTask",
      "title": "Customer order #12010",
      "percentComplete": 0,
      "priority": 5,
      "id": "pmc1rS1Io0C3rXQhyXIsNmUAOeIi",
      "target": {
        "@odata.type": "microsoft.graph.businessScenarioGroupTarget",
        "taskTargetKind": "group",
        "groupId": "7a339254-4b2b-4410-b295-c890a16776ee"
      },
      "businessScenarioProperties": {
        "externalObjectId": "Order#12010",
        "externalContextId": "Warehouse-CA-36",
        "externalObjectVersion": "000001",
        "webUrl": "https://ordertracking.contoso.com/view?id=12010",
        "externalBucketId": "deliveryBucket"
      }
    }
  ]
}
```

### Example 3: Get scenario tasks created in a specific group

The following example shows a request that gets all tasks created in a specific [group](../resources/group.md).

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_businessscenariotask_e3",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/tasks?$filter=target/microsoft.graph.businessScenarioGroupTarget/groupId eq '7a339254-4b2b-4410-b295-c890a16776ee'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-businessscenariotask-e3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-businessscenariotask-e3-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-businessscenariotask-e3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-businessscenariotask-e3-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-businessscenariotask-e3-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-businessscenariotask-e3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-businessscenariotask-e3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-businessscenariotask-e3-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.businessScenarioTask)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.businessScenarioTask",
      "title": "Customer order #12010",
      "percentComplete": 0,
      "priority": 5,
      "id": "pmc1rS1Io0C3rXQhyXIsNmUAOeIi",
      "target": {
        "@odata.type": "microsoft.graph.businessScenarioGroupTarget",
        "taskTargetKind": "group",
        "groupId": "7a339254-4b2b-4410-b295-c890a16776ee"
      },
      "businessScenarioProperties": {
        "externalObjectId": "Order#12010",
        "externalContextId": "Warehouse-CA-36",
        "externalObjectVersion": "000001",
        "webUrl": "https://ordertracking.contoso.com/view?id=12010",
        "externalBucketId": "deliveryBucket"
      }
    }
  ]
}
```
