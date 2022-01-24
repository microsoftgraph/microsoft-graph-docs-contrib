---
title: "Create simulationAutomationRun"
description: "Create a new simulationAutomationRun object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create simulationAutomationRun
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [simulationAutomationRun](../resources/simulationautomationrun.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/attackSimulation/simulationAutomations/{simulationAutomationId}/runs
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [simulationAutomationRun](../resources/simulationautomationrun.md) object.

You can specify the following properties when creating a **simulationAutomationRun**.

|Property|Type|Description|
|:---|:---|:---|
|status|simulationAutomationRunStatus|**TODO: Add Description**. The possible values are: `unknown`, `running`, `succeeded`, `failed`, `skipped`, `unknownFutureValue`. Optional.|
|startDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|endDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|simulationId|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [simulationAutomationRun](../resources/simulationautomationrun.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_simulationautomationrun_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/attackSimulation/simulationAutomations/{simulationAutomationId}/runs
Content-Type: application/json
Content-length: 199

{
  "@odata.type": "#microsoft.graph.simulationAutomationRun",
  "status": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "simulationId": "String"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.simulationAutomationRun"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.simulationAutomationRun",
  "id": "ac4936a5-3865-a0ec-7254-67a22f6121e2",
  "status": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "simulationId": "String"
}
```

