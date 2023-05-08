---
title: "businessScenarioPlanner: getPlan"
description: "Get information about the plannerPlan mapped to a given target."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: apiPageType
---

# businessScenarioPlanner: getPlan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get information about the [plannerPlan](../resources/plannerplan.md) mapped to a given target. If a **plannerPlan** doesn't exist for the specified target at the time of the request, a new plan will be created for the [businessScenario](../resources/businessscenario.md).

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
POST /solutions/businessScenarios/{businessScenarioId}/planner/getPlan
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameter that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|target|[businessScenarioTaskTargetBase](../resources/businessscenariotasktargetbase.md)|Target for which to get the plan information.|

## Response

If successful, this action returns a `200 OK` response code and a [businessScenarioPlanReference](../resources/businessscenarioplanreference.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "businessscenarioplannerthis.getplan",
  "sampleKeys": ["c5d514e6c6864911ac46c720affb6e4d"]
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/getPlan
Content-Type: application/json

{
  "target": {
      "@odata.type": "microsoft.graph.businessScenarioGroupTarget",
      "taskTargetKind": "group",
      "groupId": "7a339254-4b2b-4410-b295-c890a16776ee"
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/businessscenarioplannerthisgetplan-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/businessscenarioplannerthisgetplan-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/businessscenarioplannerthisgetplan-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/businessscenarioplannerthisgetplan-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/businessscenarioplannerthisgetplan-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/businessscenarioplannerthisgetplan-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.businessScenarioPlanReference"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.businessScenarioPlanReference",
  "id": "pmc1rS1Io0C3rXQhyXIsNmUAOeIi",
  "title": "Order Tracking"
}
```
