---
title: "deployment resource type"
description: "Represents the deployment of content to a set of devices."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# deployment resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the deployment of content to a set of devices.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List deployments](../api/windowsupdates-deployment-list.md)|[deployment](../resources/windowsupdates-deployment.md) collection|Get a list of the [deployment](../resources/windowsupdates-deployment.md) objects and their properties.|
|[Create deployment](../api/windowsupdates-deployment-create.md)|[deployment](../resources/windowsupdates-deployment.md)|Create a new [deployment](../resources/windowsupdates-deployment.md) object.|
|[Get deployment](../api/windowsupdates-deployment-get.md)|[deployment](../resources/windowsupdates-deployment.md)|Read the properties and relationships of a [deployment](../resources/windowsupdates-deployment.md) object.|
|[Update deployment](../api/windowsupdates-deployment-update.md)|[deployment](../resources/windowsupdates-deployment.md)|Update the properties of a [deployment](../resources/windowsupdates-deployment.md) object.|
|[Delete deployment](../api/windowsupdates-deployment-delete.md)|None|Deletes a [deployment](../resources/windowsupdates-deployment.md) object.|
|[List audience members](../api/windowsupdates-deploymentaudience-list-members.md)|[updatableAsset](../resources/windowsupdates-updatableasset.md) collection|List members of the deployment audience.|
|[List audience exclusions](../api/windowsupdates-deploymentaudience-list-exclusions.md)|[updatableAsset](../resources/windowsupdates-updatableasset.md) collection|List exclusions from the deployment audience.|
|[Update audience members and exclusions](../api/windowsupdates-deploymentaudience-updateaudience.md)|None|Add or remove members and exclusions of the deployment audience.|



## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|[deployableContent](../resources/windowsupdates-deployablecontent.md)|Specifies what content to deploy. Cannot be changed. Returned by default.|
|createdDateTime|DateTimeOffset|The date and time the deployment was created. Returned by default. Read-only.|
|id|String|The unique identifier for the deployment. Returned by default. Key. Not nullable. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time the deployment was last modified. Returned by default. Read-only.|
|settings|[deploymentSettings](../resources/windowsupdates-deploymentsettings.md)|Settings specified on the specific deployment governing how to deploy `content`. Returned by default.|
|state|[deploymentState](../resources/windowsupdates-deploymentstate.md)|Execution status of the deployment. Returned by default.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|audience|[deploymentAudience](../resources/windowsupdates-deploymentaudience.md)|Specifies the audience to which content is deployed.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.deployment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.deployment",
  "id": "String (identifier)",
  "state": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentState"
  },
  "content": {
    "@odata.type": "microsoft.graph.windowsUpdates.deployableContent"
  },
  "settings": {
    "@odata.type": "microsoft.graph.windowsUpdates.deploymentSettings"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)"
}
```

