---
title: "deploymentAudience resource type"
description: "The set of updatableAsset resources to which a deployment can apply."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 09/16/2024
---

# deploymentAudience resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The set of [updatableAsset](../resources/windowsupdates-updatableasset.md) resources to which a [deployment](../resources/windowsupdates-deployment.md) can apply.

If the same **updatableAsset** resource is included in the **exclusions** and **members** relationships, deployment will not apply to it.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/adminwindowsupdates-list-deploymentaudiences.md)|[microsoft.graph.windowsUpdates.deploymentAudience](../resources/windowsupdates-deploymentaudience.md) collection|Get a list of the [deploymentAudience](../resources/windowsupdates-deploymentaudience.md) objects and their properties.|
|[Create](../api/adminwindowsupdates-post-deploymentaudiences.md)|[microsoft.graph.windowsUpdates.deploymentAudience](../resources/windowsupdates-deploymentaudience.md)|Create a new [microsoft.graph.windowsUpdates.deploymentAudience](../resources/windowsupdates-deploymentaudience.md) object.|
|[Get](../api/windowsupdates-deploymentaudience-get.md)|[microsoft.graph.windowsUpdates.deploymentAudience](../resources/windowsupdates-deploymentaudience.md)|Read the properties and relationships of a [deploymentAudience](../resources/windowsupdates-deploymentaudience.md) object.|
|[Delete](../api/windowsupdates-deploymentaudience-delete.md)|None|Delete a [deploymentAudience](../resources/windowsupdates-deploymentaudience.md) object.|
|[List members](../api/windowsupdates-deploymentaudience-list-members.md)|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|List members of the [microsoft.graph.windowsUpdates.deploymentAudience](../resources/windowsupdates-deploymentaudience.md).|
|[List exclusions](../api/windowsupdates-deploymentaudience-list-exclusions.md)|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|List exclusions of the [microsoft.graph.windowsUpdates.deploymentAudience](../resources/windowsupdates-deploymentaudience.md).|
|[Update members and exclusions](../api/windowsupdates-deploymentaudience-updateaudience.md)|None|Add or remove members and exclusions.|
|[Update by ID](../api/windowsupdates-deploymentaudience-updateaudiencebyid.md)|None|Add or remove members and exclusions of the same type.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the deployment audience. Returned by default. Not nullable. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|exclusions|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|Specifies the assets to exclude from the audience.|
|members|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|Specifies the assets to include in the audience.|
|applicableContent|[microsoft.graph.windowsUpdates.applicableContent](./windowsupdates-applicablecontent.md) collection|Content eligible to deploy to devices in the audience. Not nullable. Read-only.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.deploymentAudience",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.deploymentAudience",
  "id": "String (identifier)"
}
```
