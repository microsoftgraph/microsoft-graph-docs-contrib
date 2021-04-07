---
title: "updatableAsset resource type"
description: "Represents an asset that can receive updates."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# updatableAsset resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an asset that can receive updates.

All updatable assets exist as one of the following derived types: [azureADDevice](../resources/windowsupdates-azureaddevice.md) and [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List updatableAssets](../api/windowsupdates-updatableasset-list.md)|[updatableAsset](../resources/windowsupdates-updatableasset.md) collection|Get a list of the [updatableAsset](../resources/windowsupdates-updatableasset.md) objects and their properties.|
|[Create updatableAssetGroup](../api/windowsupdates-updatableassetgroup-create.md)|[updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md)|Create a new [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) object.|
|[Get updatableAsset](../api/windowsupdates-updatableasset-get.md)|[updatableAsset](../resources/windowsupdates-updatableasset.md)|Read the properties and relationships of an [updatableAsset](../resources/windowsupdates-updatableasset.md) object.|
|[Delete updatableAsset](../api/windowsupdates-updatableasset-delete.md)|None|Delete an [updatableAsset](../resources/windowsupdates-updatableasset.md) object.|
|[Enroll asset in management](../api/windowsupdates-updatableasset-enrollassets.md)|None|Enroll assets in update management by the deployment service.|
|[Enroll asset in management (by ID)](../api/windowsupdates-updatableasset-enrollassetsbyid.md)|None|Enroll assets of the same type in update management by the deployment service.|
|[Unenroll asset from management](../api/windowsupdates-updatableasset-unenrollassets.md)|None|Unenroll assets from update management by the deployment service.|
|[Unenroll asset from management (by ID)](../api/windowsupdates-updatableasset-unenrollassetsbyid.md)|None|Unenroll assets of the same type from update management by the deployment service.|
|[Add members to group](../api/windowsupdates-updatableassetgroup-addmembers.md)|None|Add members to an updatable asset group.|
|[Add members to group (by ID)](../api/windowsupdates-updatableassetgroup-addmembersbyid.md)|None|Add members of the same type to an updatable asset group.|
|[Remove members from group](../api/windowsupdates-updatableassetgroup-removemembers.md)|None|Remove members from an updatable asset group.|
|[Remove members from group (by ID)](../api/windowsupdates-updatableassetgroup-removemembersbyid.md)|None|Remove members of the same type from an updatable asset group.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|An identifier for the asset. Key. Not nullable. Read-only. Returned by default.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.updatableAsset",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatableAsset",
  "id": "String (identifier)"
}
```

