---
title: "azureADDevice resource type"
description: "Represents a device in Microsoft Entra ID that is registered with Windows Autopatch."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/20/2026
---

# azureADDevice resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a device in Microsoft Entra ID that is registered with Windows Autopatch.

A Microsoft Entra device is automatically created through one of the following methods:
* [updatableAsset: enrollAssets](../api/windowsupdates-updatableasset-enrollassets.md)
* [updatableAsset: enrollAssetsById](../api/windowsupdates-updatableasset-enrollassetsbyid.md)
* [deploymentAudience: updateAudience](../api/windowsupdates-deploymentaudience-updateaudience.md)
* [deploymentAudience: updateAudienceById](../api/windowsupdates-deploymentaudience-updateaudiencebyid.md)
* [updatableAssetGroup: addMembers](../api/windowsupdates-updatableassetgroup-addmembers.md)
* [updatableAssetGroup: addMembersById](../api/windowsupdates-updatableassetgroup-addmembersbyid.md)

Inherits from [updatableAsset](../resources/windowsupdates-updatableasset.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List Microsoft Entra devices](../api/adminwindowsupdates-list-updatableassets-azureaddevice.md)|[microsoft.graph.windowsUpdates.azureADDevice](../resources/windowsupdates-azureaddevice.md) collection|Get a list of the [azureADDevice](../resources/windowsupdates-azureaddevice.md) objects and their properties.|
|[Get Microsoft Entra device](../api/windowsupdates-azureaddevice-get.md)|[microsoft.graph.windowsUpdates.azureADDevice](../resources/windowsupdates-azureaddevice.md)|Read the properties and relationships of an [azureADDevice](../resources/windowsupdates-azureaddevice.md) object.|
|[Delete Microsoft Entra device](../api/windowsupdates-azureaddevice-delete.md)|None|Delete an [azureADDevice](../resources/windowsupdates-azureaddevice.md) object.|
|[Enroll in update management](../api/windowsupdates-updatableasset-enrollassets.md)|None|Enroll [azureADDevice](../resources/windowsupdates-azureaddevice.md) resources in update management by Windows Autopatch.|
|[Enroll by ID](../api/windowsupdates-updatableasset-enrollassetsbyid.md)|None|Enroll [azureADDevice](../resources/windowsupdates-azureaddevice.md) resources of the same type in update management by Windows Autopatch.|
|[Unenroll from update management](../api/windowsupdates-updatableasset-unenrollassets.md)|None|Unenroll [azureADDevice](../resources/windowsupdates-azureaddevice.md) resources from update management by Windows Autopatch.|
|[Unenroll by ID](../api/windowsupdates-updatableasset-unenrollassetsbyid.md)|None|Unenroll [azureADDevice](../resources/windowsupdates-azureaddevice.md) resources of the same type from update management by Windows Autopatch.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|enrollments|[microsoft.graph.windowsUpdates.updatableAssetEnrollment](../resources/windowsupdates-updatableassetenrollment.md) collection|Specifies areas in which the device is enrolled. Read-only. Returned by default.|
|errors|[microsoft.graph.windowsUpdates.updatableAssetError](../resources/windowsupdates-updatableasseterror.md) collection|Specifies any errors that prevent the device from being enrolled in update management or receving deployed content. Read-only. Returned by default.|
|id|String|An identifier for the device. Key. Not nullable. Read-only. Returned by default. Inherited from [updatableAsset](../resources/windowsupdates-updatableasset.md)|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.azureADDevice",
  "baseType": "microsoft.graph.windowsUpdates.updatableAsset",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.azureADDevice",
  "id": "String (identifier)",
  "errors": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.azureADDeviceRegistrationError"
    }
  ],
  "enrollments": [
    {
      "@odata.type": "microsoft.graph.windowsUpdates.updateManagementEnrollment"
    }
  ]
}
```
