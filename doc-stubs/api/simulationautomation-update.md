---
title: "Update simulationAutomation"
description: "Update the properties of a simulationAutomation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update simulationAutomation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [simulationAutomation](../resources/simulationautomation.md) object.

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
PATCH /security/attackSimulation/simulationAutomations/{simulationAutomationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


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

If successful, this method returns a `200 OK` response code and an updated [simulationAutomation](../resources/simulationautomation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_simulationautomation"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/attackSimulation/simulationAutomations/{simulationAutomationId}
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
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
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

