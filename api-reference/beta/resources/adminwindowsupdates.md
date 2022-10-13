---
title: "adminWindowsUpdates resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# adminWindowsUpdates resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List adminWindowsUpdates](../api/adminwindows-list-updates.md)|[adminWindowsUpdates](../resources/adminwindowsupdates.md) collection|Get a list of the [adminWindowsUpdates](../resources/adminwindowsupdates.md) objects and their properties.|
|[Create adminWindowsUpdates](../api/adminwindows-post-updates.md)|[adminWindowsUpdates](../resources/adminwindowsupdates.md)|Create a new [adminWindowsUpdates](../resources/adminwindowsupdates.md) object.|
|[Get adminWindowsUpdates](../api/adminwindowsupdates-get.md)|[adminWindowsUpdates](../resources/adminwindowsupdates.md)|Read the properties and relationships of an [adminWindowsUpdates](../resources/adminwindowsupdates.md) object.|
|[Update adminWindowsUpdates](../api/adminwindowsupdates-update.md)|[adminWindowsUpdates](../resources/adminwindowsupdates.md)|Update the properties of an [adminWindowsUpdates](../resources/adminwindowsupdates.md) object.|
|[Delete adminWindowsUpdates](../api/adminwindows-delete-updates.md)|None|Delete an [adminWindowsUpdates](../resources/adminwindowsupdates.md) object.|
|[List catalog](../api/adminwindowsupdates-list-catalog.md)|[catalog](../resources/windowsupdates-catalog.md) collection|Get the catalog resources from the catalog navigation property.|
|[Create catalog](../api/adminwindowsupdates-post-catalog.md)|[catalog](../resources/windowsupdates-catalog.md)|Create a new catalog object.|
|[List deploymentAudiences](../api/windowsupdates-deployment-list-audience.md)|[deploymentAudience](../resources/windowsupdates-deploymentaudience.md) collection|Get the deploymentAudience resources from the deploymentAudiences navigation property.|
|[Create deploymentAudience](../api/adminwindowsupdates-post-deploymentaudiences.md)|[deploymentAudience](../resources/windowsupdates-deploymentaudience.md)|Create a new deploymentAudience object.|
|[List deployments](../api/adminwindowsupdates-list-deployments.md)|[deployment](../resources/windowsupdates-deployment.md) collection|Get the deployment resources from the deployments navigation property.|
|[Create deployment](../api/adminwindowsupdates-post-deployments.md)|[deployment](../resources/windowsupdates-deployment.md)|Create a new deployment object.|
|[List resourceConnections](../api/adminwindowsupdates-list-resourceconnections.md)|[resourceConnection](../resources/windowsupdates-resourceconnection.md) collection|Get the resourceConnection resources from the resourceConnections navigation property.|
|[Create resourceConnection](../api/adminwindowsupdates-post-resourceconnections.md)|[resourceConnection](../resources/windowsupdates-resourceconnection.md)|Create a new resourceConnection object.|
|[List updatableAssets](../api/windowsupdates-deploymentaudience-list-members.md)|[updatableAsset](../resources/windowsupdates-updatableasset.md) collection|Get the updatableAsset resources from the updatableAssets navigation property.|
|[Create updatableAsset](../api/adminwindowsupdates-post-updatableassets.md)|[updatableAsset](../resources/windowsupdates-updatableasset.md)|Create a new updatableAsset object.|
|[List updatePolicies](../api/adminwindowsupdates-list-updatepolicies.md)|[updatePolicy](../resources/windowsupdates-updatepolicy.md) collection|Get the updatePolicy resources from the updatePolicies navigation property.|
|[Create updatePolicy](../api/adminwindowsupdates-post-updatepolicies.md)|[updatePolicy](../resources/windowsupdates-updatepolicy.md)|Create a new updatePolicy object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|catalog|[catalog](../resources/windowsupdates-catalog.md)|**TODO: Add Description**|
|deploymentAudiences|[deploymentAudience](../resources/windowsupdates-deploymentaudience.md) collection|**TODO: Add Description**|
|deployments|[deployment](../resources/windowsupdates-deployment.md) collection|**TODO: Add Description**|
|resourceConnections|[resourceConnection](../resources/windowsupdates-resourceconnection.md) collection|**TODO: Add Description**|
|updatableAssets|[updatableAsset](../resources/windowsupdates-updatableasset.md) collection|**TODO: Add Description**|
|updatePolicies|[updatePolicy](../resources/windowsupdates-updatepolicy.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adminWindowsUpdates",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adminWindowsUpdates",
  "id": "String (identifier)"
}
```

