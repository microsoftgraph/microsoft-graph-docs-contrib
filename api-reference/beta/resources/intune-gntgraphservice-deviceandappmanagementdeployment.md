---
title: "deviceAndAppManagementDeployment resource type"
description: "Represents a staged rollout of an Intune payload through deployment rings."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementDeployment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a staged rollout of an Intune payload through deployment rings.

Create the deployment in `draft` mode, configure the workload assignments for its payload, and invoke **deployAction** with `commit` to activate it. Committing validates that all payload assignments are configured. An active deployment can't return to draft mode.

The service activates rings in order and applies their assignment changes when activation criteria are met. Use **deployAction** to pause, resume, or cancel a rollout. Only draft, canceled, or completed deployments can be deleted. Only **displayName** and **description** can be updated after creation.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/intune-gntgraphservice-deviceandappmanagementdeployment-list.md)|[deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) collection|List the deployments.|
|[Create](../api/intune-gntgraphservice-deviceandappmanagementdeployment-create.md)|[deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md)|Create a deployment.|
|[Get](../api/intune-gntgraphservice-deviceandappmanagementdeployment-get.md)|[deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md)|Get a deployment.|
|[Update](../api/intune-gntgraphservice-deviceandappmanagementdeployment-update.md)|None|Update a deployment.|
|[Delete](../api/intune-gntgraphservice-deviceandappmanagementdeployment-delete.md)|None|Delete a deployment.|
|[Manage deployment](../api/intune-gntgraphservice-deviceandappmanagementdeployment-deployaction.md)|Boolean|Commit, pause, resume, or cancel the deployment.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The UTC creation date and time in ISO 8601 format. Populated by the service. Read-only.|
|deploymentPlanId|String|The identifier of the associated deployment plan, or null for a custom deployment. Maximum length is 255 characters. Specifying this value doesn't automatically populate rings from the plan.|
|description|String|The deployment description. Maximum length is 1000 characters.|
|displayName|String|The display name. Required during creation and can't be cleared during updates. Maximum length is 256 characters. Supports `$filter` (`contains`) and `$orderby`.|
|id|String|The unique deployment identifier, generated during creation. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The UTC last modification date and time in ISO 8601 format. Populated by the service. Read-only.|
|mode|[deviceAndAppManagementDeploymentMode](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentmode.md)|The deployment mode. The possible values are: `draft`, `active`, `unknownFutureValue`. The default value is `draft`. Read-only. Supports `$filter` (`eq`).|
|payloads|[deviceAndAppManagementDeploymentPayload](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentpayload.md) collection|The payload metadata for the deployment. Required during creation. Currently contains exactly one payload. Supports `$filter` with `any` and `eq` on **payloadId** or **payloadEntitySet**.|
|ringCount|Int32|The number of deployment rings, computed by the service. Read-only.|
|startDateTime|DateTimeOffset|The UTC deployment start date and time in ISO 8601 format, populated during creation. Read-only.|
|state|[deviceAndAppManagementDeploymentState](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentstate.md)|The rollout state. The possible values are: `notStarted`, `inProgress`, `canceled`, `paused`, `completed`, `error`, `unknownFutureValue`, `pendingApproval`. Use `Prefer: include-unknown-enum-members` to retrieve `pendingApproval`. The default value is `notStarted`. Read-only. Supports `$filter` (`eq`, `ne`).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|assignmentResults|[deviceAndAppManagementDeploymentAssignmentResult](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentassignmentresult.md) collection|The assignment results for the deployment. This relationship replaces the deprecated **assignmentResults** property on ring assignment configurations.|
|rings|[deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md) collection|The deployment rings. Contains 1 through 10 rings, created with the deployment and immutable afterward. Returned on a single deployment only when requested with `$expand`; excluded from deployment list responses.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAndAppManagementDeployment"
} -->
```json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeployment",
  "id": "String",
  "deploymentPlanId": "String",
  "displayName": "String",
  "description": "String",
  "payloads": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentPayload"
    }
  ],
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "mode": "String",
  "state": "String",
  "ringCount": "Int32",
  "startDateTime": "String (timestamp)"
}
```
