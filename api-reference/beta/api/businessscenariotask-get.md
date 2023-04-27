---
title: "Get businessScenarioTask"
description: "Read the properties and relationships of a businessScenarioTask object."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: apiPageType
---

# Get businessScenarioTask

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [businessScenarioTask](../resources/businessscenariotask.md) object.

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
GET /solutions/businessScenarios/{businessScenarioId}/planner/tasks/{businessScenarioTaskId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [businessScenarioTask](../resources/businessscenariotask.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_businessscenariotask",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d", "pmc1rS1Io0C3rXQhyXIsNmUAOeIi"]
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/tasks/pmc1rS1Io0C3rXQhyXIsNmUAOeIi
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-businessscenariotask-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-businessscenariotask-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-businessscenariotask-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-businessscenariotask-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-businessscenariotask-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-businessscenariotask-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.businessScenarioTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```
