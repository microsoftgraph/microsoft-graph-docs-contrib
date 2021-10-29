---
title: "Create teamworkDeviceOperation"
description: "Create a new teamworkDeviceOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create teamworkDeviceOperation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) object.

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
POST /teamwork/devices/{teamworkDeviceId}/operations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) object.

You can specify the following properties when creating a **teamworkDeviceOperation**.

|Property|Type|Description|
|:---|:---|:---|
|status|String|**TODO: Add Description** Required.|
|operationType|teamworkDeviceOperationType|**TODO: Add Description**. The possible values are: `deviceRestart`, `configUpdate`, `deviceDiagnostics`, `softwareUpdate`, `deviceManagementAgentConfigUpdate`, `remoteLogin`, `remoteLogout`, `unknownFutureValue`. Required.|
|error|[operationError](../resources/operationerror.md)|**TODO: Add Description** Optional.|
|startedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|createdBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Optional.|
|lastActionDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|lastActionBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [teamworkDeviceOperation](../resources/teamworkdeviceoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_teamworkdeviceoperation_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/teamwork/devices/{teamworkDeviceId}/operations
Content-Type: application/json
Content-length: 479

{
  "@odata.type": "#microsoft.graph.teamworkDeviceOperation",
  "status": "String",
  "operationType": "String",
  "error": {
    "@odata.type": "microsoft.graph.operationError"
  },
  "startedDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastActionDateTime": "String (timestamp)",
  "lastActionBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkDeviceOperation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamworkDeviceOperation",
  "id": "eab261f8-61f8-eab2-f861-b2eaf861b2ea",
  "status": "String",
  "operationType": "String",
  "error": {
    "@odata.type": "microsoft.graph.operationError"
  },
  "startedDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastActionDateTime": "String (timestamp)",
  "lastActionBy": {
    "@odata.type": "microsoft.graph.identitySet"
  }
}
```

