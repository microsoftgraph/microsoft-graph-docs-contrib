---
title: "Create simulationAutomation"
description: "Create a new simulationAutomation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create simulationAutomation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [simulationAutomation](../resources/simulationautomation.md) object.

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
POST /security/attackSimulation/simulationAutomations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [simulationAutomation](../resources/simulationautomation.md) object.

You can specify the following properties when creating a **simulationAutomation**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Optional.|
|description|String|**TODO: Add Description** Optional.|
|status|simulationAutomationStatus|**TODO: Add Description**. The possible values are: `unknown`, `draft`, `notRunning`, `running`, `completed`, `unknownFutureValue`. Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description** Optional.|
|lastRunDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|nextRunDateTime|DateTimeOffset|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [simulationAutomation](../resources/simulationautomation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_simulationautomation_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/attackSimulation/simulationAutomations
Content-Type: application/json
Content-length: 305

{
  "@odata.type": "#microsoft.graph.simulationAutomation",
  "displayName": "String",
  "description": "String",
  "status": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastRunDateTime": "String (timestamp)",
  "nextRunDateTime": "String (timestamp)"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.simulationAutomation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.simulationAutomation",
  "id": "fbad62b0-b32d-b6ac-9f48-d84bbea08f96",
  "displayName": "String",
  "description": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastRunDateTime": "String (timestamp)",
  "nextRunDateTime": "String (timestamp)"
}
```

