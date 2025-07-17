---
title: "adminWindowsUpdates resource type"
description: "Represents an entity that acts as a container for all Windows Autopatch functionalities."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 09/16/2024
---

# adminWindowsUpdates resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an entity that acts as a container for all Windows Autopatch functionalities.

## Properties
| Property | Type   | Description                                                                         |
|:---------|:-------|:------------------------------------------------------------------------------------|
| id       | String | The unique identifier for the device. Not nullable. Read-only. Returned by default. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|catalog|[microsoft.graph.windowsUpdates.catalog](../resources/windowsupdates-catalog.md)|Catalog of content that can be approved for deployment by Windows Autopatch. Read-only.|
|deploymentAudiences|[microsoft.graph.windowsUpdates.deploymentAudience](../resources/windowsupdates-deploymentaudience.md) collection|The set of [updatableAsset](../resources/windowsupdates-updatableasset.md) resources to which a [deployment](../resources/windowsupdates-deployment.md) can apply.|
|deployments|[microsoft.graph.windowsUpdates.deployment](../resources/windowsupdates-deployment.md) collection|Deployments created using Windows Autopatch.|
|products|[microsoft.graph.windowsUpdates.product](../resources/windowsupdates-product.md) collection|A collection of Windows products.|
|resourceConnections|[microsoft.graph.windowsUpdates.resourceConnection](../resources/windowsupdates-resourceconnection.md) collection|Service connections to external resources such as analytics workspaces.|
|updatableAssets|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|Assets registered with Windows Autopatch that can receive updates.|
|updatePolicies|[microsoft.graph.windowsUpdates.updatePolicy](../resources/windowsupdates-updatepolicy.md) collection|A collection of policies for approving the deployment of different content to an audience over time.|

## JSON representation
The following JSON representation shows the resource type.
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
