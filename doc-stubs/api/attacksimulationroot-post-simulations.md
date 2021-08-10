---
title: "Create simulation"
description: "Create a new simulation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create simulation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new simulation object.

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

The following table shows the properties that are required when you create the [simulation](../resources/simulation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|attackType|simulationAttackType|**TODO: Add Description**. Possible values are: `unknown`, `social`, `cloud`, `endpoint`, `unknownFutureValue`.|
|attackTechnique|simulationAttackTechnique|**TODO: Add Description**. Possible values are: `unknown`, `credentialHarvesting`, `attachmentMalware`, `driveByUrl`, `linkInAttachment`, `linkToMalwareFile`, `unknownFutureValue`.|
|status|simulationStatus|**TODO: Add Description**. Possible values are: `unknown`, `draft`, `inProgress`, `scheduled`, `completed`, `partiallyCompleted`, `failed`, `cancelled`, `excluded`, `deleted`, `included`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|launchDateTime|DateTimeOffset|**TODO: Add Description**|
|completionDateTime|DateTimeOffset|**TODO: Add Description**|
|includeAllAccountTargets|Boolean|**TODO: Add Description**|
|enableRegionTimezoneDelivery|Boolean|**TODO: Add Description**|
|mode|simulationMode|**TODO: Add Description**. Possible values are: `real`, `preview`, `unknownFutureValue`.|
|isAutomated|Boolean|**TODO: Add Description**|
|cleanupArtifacts|Boolean|**TODO: Add Description**|
|payloadSource|payloadSource|**TODO: Add Description**. Possible values are: `unknown`, `global`, `tenant`, `unknownFutureValue`.|
|payloadDeliveryPlatform|payloadDeliveryPlatform|**TODO: Add Description**. Possible values are: `unknown`, `sms`, `email`, `teams`, `unknownFutureValue`.|
|trainingAssignmentPreference|trainingAssignmentPreference|**TODO: Add Description**. Possible values are: `unknown`, `auto`, `manual`, `unknownFutureValue`.|
|trainingContentPreference|trainingContentPreference|**TODO: Add Description**. Possible values are: `unknown`, `microsoft`, `custom`, `noTraining`, `unknownFutureValue`.|
|trainingDueDateTime|DateTimeOffset|**TODO: Add Description**|
|report|[simulationReport](../resources/simulationreport.md)|**TODO: Add Description**|



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
Content-length: 809

{
  "@odata.type": "#microsoft.graph.simulation",
  "displayName": "String",
  "description": "String",
  "attackType": "String",
  "attackTechnique": "String",
  "status": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "launchDateTime": "String (timestamp)",
  "completionDateTime": "String (timestamp)",
  "includeAllAccountTargets": "Boolean",
  "enableRegionTimezoneDelivery": "Boolean",
  "mode": "String",
  "isAutomated": "Boolean",
  "cleanupArtifacts": "Boolean",
  "payloadSource": "String",
  "payloadDeliveryPlatform": "String",
  "trainingAssignmentPreference": "String",
  "trainingContentPreference": "String",
  "trainingDueDateTime": "String (timestamp)",
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
  "id": "f1b13829-3829-f1b1-2938-b1f12938b1f1",
  "displayName": "String",
  "description": "String",
  "attackType": "String",
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
  "includeAllAccountTargets": "Boolean",
  "enableRegionTimezoneDelivery": "Boolean",
  "mode": "String",
  "isAutomated": "Boolean",
  "cleanupArtifacts": "Boolean",
  "payloadSource": "String",
  "payloadDeliveryPlatform": "String",
  "trainingAssignmentPreference": "String",
  "trainingContentPreference": "String",
  "trainingDueDateTime": "String (timestamp)",
  "report": {
    "@odata.type": "microsoft.graph.simulationReport"
  }
}
```

