---
title: "deviceAndAppManagementDeploymentAssignmentResult resource type"
description: "Represents the result of applying an assignment in a deployment ring."
author: "jaiprakashmb"
ms.topic: reference
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 11/05/2026
---

# deviceAndAppManagementDeploymentAssignmentResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the result of applying an assignment in a deployment ring.

Used by the **assignmentResults** relationship of [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|assignmentId|String|The identifier of the assignment.|
|assignmentState|[deviceAndAppManagementDeploymentAssignmentState](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentassignmentstate.md)|The assignment state. The possible values are: `unknown`, `notActivated`, `activating`, `canceled`, `paused`, `activated`, `error`, `unknownFutureValue`.|
|code|[deviceAndAppManagementDeploymentAssignmentErrorCode](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentassignmenterrorcode.md)|The assignment error code. The possible values are: `none`, `assignmentAlreadyExists`, `unknownFutureValue`.|
|id|String|The unique identifier of the assignment result.|
|lastModifiedDateTime|DateTimeOffset|The UTC last modification date and time in ISO 8601 format.|
|message|String|The result message. Maximum length is 400 characters.|
|payloadId|String|The identifier of the associated payload.|
|ringId|String|The identifier of the deployment ring.|
|ringOrder|Int32|The processing order of the deployment ring.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentAssignmentResult"
} -->
```json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentAssignmentResult",
  "id": "String",
  "assignmentId": "String",
  "payloadId": "String",
  "ringId": "String",
  "ringOrder": "Int32",
  "assignmentState": "String",
  "code": "String",
  "message": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```
