---
title: "List businessScenarioTasks"
description: "Get a list of the businessScenarioTask objects and their properties."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: apiPageType
---

# List businessScenarioTasks
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [businessScenarioTask](../resources/businessscenariotask.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|BusinessScenarioData.Read.OwnedBy, BusinessScenarioData.ReadWrite.OwnedBy|
|Delegated (personal Microsoft account)|Not supported.|
|Application|BusinessScenarioData.Read.OwnedBy, BusinessScenarioData.ReadWrite.OwnedBy|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/businessScenarios/{businessScenarioId}/planner/tasks
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). You can query tasks with their context ID or location as filters.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [businessScenarioTask](../resources/businessscenariotask.md) objects in the response body.

## Examples

### Example 1: Get all tasks for a scenario

The following example shows a request that gets all tasks related to a scenario.

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_businessscenariotask_e1",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/tasks
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-businessscenariotask-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-businessscenariotask-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-businessscenariotask-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-businessscenariotask-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-businessscenariotask-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-businessscenariotask-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.
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

The following is an example of a request.

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

---

#### Response

The following is an example of the response.
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

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_businessscenariotask_e3",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/tasks?$filter=location/microsoft.graph.businessScenarioGroupTarget/groupId eq '7a339254-4b2b-4410-b295-c890a16776ee'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-businessscenariotask-e3-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-businessscenariotask-e3-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-businessscenariotask-e3-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-businessscenariotask-e3-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.
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
