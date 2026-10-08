---
title: "deviceAndAppManagementDeployment resource type"
description: "Represents a device and app management deployment for staged rollout scenarios."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementDeployment resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a device and app management deployment for staged rollout scenarios.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceAndAppManagementDeployments](../api/intune-gntgraphservice-deviceandappmanagementdeployment-list.md)|[deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) collection|List properties and relationships of the [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) objects.|
|[Get deviceAndAppManagementDeployment](../api/intune-gntgraphservice-deviceandappmanagementdeployment-get.md)|[deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md)|Read properties and relationships of the [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object.|
|[Create deviceAndAppManagementDeployment](../api/intune-gntgraphservice-deviceandappmanagementdeployment-create.md)|[deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md)|Create a new [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object.|
|[Delete deviceAndAppManagementDeployment](../api/intune-gntgraphservice-deviceandappmanagementdeployment-delete.md)|None|Deletes a [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md).|
|[Update deviceAndAppManagementDeployment](../api/intune-gntgraphservice-deviceandappmanagementdeployment-update.md)|[deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md)|Update the properties of a [deviceAndAppManagementDeployment](../resources/intune-gntgraphservice-deviceandappmanagementdeployment.md) object.|
|[deployAction action](../api/intune-gntgraphservice-deviceandappmanagementdeployment-deployaction.md)|Boolean||

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key for the resource.|
|deploymentPlanId|String|Key of the device and app management deployment plan.|
|displayName|String|The display name of the deployment plan.|
|description|String|The description of the deployment plan.|
|payloads|[deviceAndAppManagementDeploymentPayload](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentpayload.md) collection|The payloads associated with the device and app management deployment.|
|createdDateTime|DateTimeOffset|The date and time of when the deployment was created (UTC).|
|lastModifiedDateTime|DateTimeOffset|The date and time of when the plan was last modified (UTC).|
|mode|[deviceAndAppManagementDeploymentMode](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentmode.md)|Indicates the device and app management deployment mode. Possible values are: `draft`, `active`, `unknownFutureValue`.|
|state|[deviceAndAppManagementDeploymentState](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentstate.md)|Indicates the device and app management deployment state. Possible values are: `notStarted`, `inProgress`, `canceled`, `paused`, `completed`, `error`, `unknownFutureValue`.|
|ringCount|Int32|The number of rings in the deployment.|
|startDateTime|DateTimeOffset|The start date and time of the deployment (UTC).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|rings|[deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md) collection|The deployment rings associated with the device and app management deployment.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAndAppManagementDeployment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeployment",
  "id": "String (identifier)",
  "deploymentPlanId": "String",
  "displayName": "String",
  "description": "String",
  "payloads": [
    {
      "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentPayload",
      "payloadId": "String",
      "payloadDisplayName": "String",
      "payloadType": "String"
    }
  ],
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "mode": "String",
  "state": "String",
  "ringCount": 1024,
  "startDateTime": "String (timestamp)"
}
```