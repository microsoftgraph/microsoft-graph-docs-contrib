---
title: "Create simulation"
description: "Create a new simulation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create simulation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [simulation](../resources/simulation.md) object.

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
POST /security/attackSimulation/simulations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [simulation](../resources/simulation.md) object.

You can specify the following properties when creating a **simulation**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Optional.|
|description|String|**TODO: Add Description** Optional.|
|attackType|simulationAttackType|**TODO: Add Description**. The possible values are: `unknown`, `social`, `cloud`, `endpoint`, `unknownFutureValue`. Optional.|
|payloadDeliveryPlatform|payloadDeliveryPlatform|**TODO: Add Description**. The possible values are: `unknown`, `sms`, `email`, `teams`, `unknownFutureValue`. Optional.|
|attackTechnique|simulationAttackTechnique|**TODO: Add Description**. The possible values are: `unknown`, `credentialHarvesting`, `attachmentMalware`, `driveByUrl`, `linkInAttachment`, `linkToMalwareFile`, `unknownFutureValue`. Optional.|
|status|simulationStatus|**TODO: Add Description**. The possible values are: `unknown`, `draft`, `running`, `scheduled`, `succeeded`, `failed`, `cancelled`, `excluded`, `unknownFutureValue`. Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description** Optional.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description** Optional.|
|launchDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|completionDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|isAutomated|Boolean|**TODO: Add Description** Optional.|
|automationId|String|**TODO: Add Description** Optional.|
|report|[simulationReport](../resources/simulationreport.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [simulation](../resources/simulation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_simulation_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/attackSimulation/simulations
Content-Type: application/json
Content-length: 530

{
  "@odata.type": "#microsoft.graph.simulation",
  "displayName": "String",
  "description": "String",
  "attackType": "String",
  "payloadDeliveryPlatform": "String",
  "attackTechnique": "String",
  "status": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "launchDateTime": "String (timestamp)",
  "completionDateTime": "String (timestamp)",
  "isAutomated": "Boolean",
  "automationId": "String",
  "report": {
    "@odata.type": "microsoft.graph.simulationReport"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.simulation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.simulation",
  "id": "acd54bc7-d28c-99c0-06ff-b2e4be4c0271",
  "displayName": "String",
  "description": "String",
  "attackType": "String",
  "payloadDeliveryPlatform": "String",
  "attackTechnique": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "launchDateTime": "String (timestamp)",
  "completionDateTime": "String (timestamp)",
  "isAutomated": "Boolean",
  "automationId": "String",
  "report": {
    "@odata.type": "microsoft.graph.simulationReport"
  }
}
```

