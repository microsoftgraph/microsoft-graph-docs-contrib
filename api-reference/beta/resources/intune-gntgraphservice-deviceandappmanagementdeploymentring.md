---
title: "deviceAndAppManagementDeploymentRing resource type"
description: "Device and app management deployment ring with status data."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceAndAppManagementDeploymentRing resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device and app management deployment ring with status data.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List deviceAndAppManagementDeploymentRings](../api/intune-gntgraphservice-deviceandappmanagementdeploymentring-list.md)|[deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md) collection|List properties and relationships of the [deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md) objects.|
|[Get deviceAndAppManagementDeploymentRing](../api/intune-gntgraphservice-deviceandappmanagementdeploymentring-get.md)|[deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md)|Read properties and relationships of the [deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md) object.|
|[Create deviceAndAppManagementDeploymentRing](../api/intune-gntgraphservice-deviceandappmanagementdeploymentring-create.md)|[deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md)|Create a new [deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md) object.|
|[Delete deviceAndAppManagementDeploymentRing](../api/intune-gntgraphservice-deviceandappmanagementdeploymentring-delete.md)|None|Deletes a [deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md).|
|[Update deviceAndAppManagementDeploymentRing](../api/intune-gntgraphservice-deviceandappmanagementdeploymentring-update.md)|[deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md)|Update the properties of a [deviceAndAppManagementDeploymentRing](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentring.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key for the resource.|
|displayName|String|The display name of the deployment ring.|
|order|Int32|The order in which this ring should be processed relative to other rings.|
|activationCriteria|[deviceAndAppManagementRingActivationCriteria](../resources/intune-gntgraphservice-deviceandappmanagementringactivationcriteria.md)|The criteria that must be met for current deployment ring activation.|
|state|[deviceAndAppManagementDeploymentRingState](../resources/intune-gntgraphservice-deviceandappmanagementdeploymentringstate.md)|Device and app management deployment ring status. Possible values are: `notActivated`, `activating`, `canceled`, `paused`, `activated`, `error`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignmentConfigurations|[deviceAndAppManagementRingAssignmentConfiguration](../resources/intune-gntgraphservice-deviceandappmanagementringassignmentconfiguration.md) collection|The collection of assignment configurations associated with this deployment ring.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAndAppManagementDeploymentRing"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementDeploymentRing",
  "id": "String (identifier)",
  "displayName": "String",
  "order": 1024,
  "activationCriteria": {
    "@odata.type": "microsoft.graph.deviceAndAppManagementRingActivationDateTimeCriteria",
    "startDateTime": "String (timestamp)"
  },
  "state": "String"
}
```