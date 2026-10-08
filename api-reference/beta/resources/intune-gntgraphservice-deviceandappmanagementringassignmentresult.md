---
title: "deviceAndAppManagementRingAssignmentResult resource type"
description: "Represents the status of an individual assignment within a deployment ring."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementRingAssignmentResult resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the status of an individual assignment within a deployment ring.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|payloadId|Guid|The payload identifier for this assignment.|
|status|[deviceAndAppManagementDeploymentRingAssignmentStatus](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentringassignmentstatus.md)|The status of this assignment. Possible values are: `notActivated`, `activating`, `canceled`, `paused`, `activated`, `error`, `unknownFutureValue`.|
|message|String|Optional status message for this assignment.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementRingAssignmentResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementRingAssignmentResult",
  "payloadId": "Guid",
  "status": "String",
  "message": "String"
}
```