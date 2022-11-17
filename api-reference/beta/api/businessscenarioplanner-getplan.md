---
title: "businessScenarioPlanner: getPlan"
description: "Get information about the plannerPlan mapped to a given target."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# businessScenarioPlanner: getPlan

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get information about the [plannerPlan](../resources/plannerplan.md) mapped to a given target.

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
<!-- {
  "blockType": "request",
  "name": "businessscenarioplannerthis.getplan"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/businessScenarios/c5d514e6c6864911ac46c720affb6e4d/planner/getPlan
Content-Type: application/json

{
  "target": {
    "@odata.type": "microsoft.graph.businessScenarioGroupTarget"
  }
}
```

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
  "value": {
    "@odata.type": "#microsoft.graph.businessScenarioPlanReference",
    "id": "String (identifier)",
    "title": "String"
  }
}
```
