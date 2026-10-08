---
title: "updatableAsset resource type"
description: "Represents an asset that can receive updates."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# updatableAsset resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an asset that can receive updates.

All updatable assets exist as one of the following derived types: [azureADDevice](../resources/windowsupdates-azureaddevice.md) and [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md).

Base type of [azureADDevice](../resources/windowsupdates-azureaddevice.md) and [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md).

This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List updatable assets](../api/adminwindowsupdates-list-updatableassets.md)|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md) collection|Get a list of the [updatableAsset](../resources/windowsupdates-updatableasset.md) objects and their properties.|
|[Create updatable asset group](../api/adminwindowsupdates-post-updatableassets-updatableassetgroup.md)|[microsoft.graph.windowsUpdates.updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md)|Create a new [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md) object.|
|[Get updatable asset](../api/windowsupdates-updatableasset-get.md)|[microsoft.graph.windowsUpdates.updatableAsset](../resources/windowsupdates-updatableasset.md)|Read the properties and relationships of an [updatableAsset](../resources/windowsupdates-updatableasset.md) object.|
|[Delete updatable asset](../api/windowsupdates-updatableasset-delete.md)|None|Delete an [updatableAsset](../resources/windowsupdates-updatableasset.md) object.|
|[Enroll in update management](../api/windowsupdates-updatableasset-enrollassets.md)|None|Enroll [updatableAsset](../resources/windowsupdates-updatableasset.md) resources in update management by Windows Autopatch.|
|[Enroll by ID](../api/windowsupdates-updatableasset-enrollassetsbyid.md)|None|Enroll [updatableAsset](../resources/windowsupdates-updatableasset.md) resources of the same type in update management by Windows Autopatch.|
|[Unenroll from update management](../api/windowsupdates-updatableasset-unenrollassets.md)|None|Unenroll [updatableAsset](../resources/windowsupdates-updatableasset.md) resources from update management by Windows Autopatch.|
|[Unenroll by ID](../api/windowsupdates-updatableasset-unenrollassetsbyid.md)|None|Unenroll [updatableAsset](../resources/windowsupdates-updatableasset.md) resources of the same type from update management by Windows Autopatch.|
|[Add members](../api/windowsupdates-updatableassetgroup-addmembers.md)|None|Add members to an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md).|
|[Add members by ID](../api/windowsupdates-updatableassetgroup-addmembersbyid.md)|None|Add members of the same type to an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md).|
|[Remove members](../api/windowsupdates-updatableassetgroup-removemembers.md)|None|Remove members from an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md).|
|[Remove members by ID](../api/windowsupdates-updatableassetgroup-removemembersbyid.md)|None|Remove members of the same type from an [updatableAssetGroup](../resources/windowsupdates-updatableassetgroup.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|An identifier for the asset. Key. Not nullable. Read-only. Returned by default.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

