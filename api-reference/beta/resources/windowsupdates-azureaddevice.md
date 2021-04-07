---
title: "azureADDevice resource type"
description: "Represents a device in Azure Active Directory (Azure AD) that is registered with the deployment service."
author: "Alice-at-Microsoft"
localization_priority: Normal
ms.prod: "w10"
doc_type: resourcePageType
---

# azureADDevice resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a device in Azure Active Directory (Azure AD) that is registered with the deployment service.

An Azure AD device is automatically created through one of the following methods: [enrollAssets](../api/windowsupdates-updatableasset-enrollassets.md), [updateAudience](../api/windowsupdates-deploymentaudience-updateaudience.md).

Inherits from [updatableAsset](../resources/windowsupdates-updatableasset.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureADDevices](../api/windowsupdates-azureaddevice-list.md)|[azureADDevice](../resources/windowsupdates-azureaddevice.md) collection|Get a list of the [azureADDevice](../resources/windowsupdates-azureaddevice.md) objects and their properties.|
|[Get azureADDevice](../api/windowsupdates-azureaddevice-get.md)|[azureADDevice](../resources/windowsupdates-azureaddevice.md)|Read the properties and relationships of an [azureADDevice](../resources/windowsupdates-azureaddevice.md) object.|
|[Delete azureADDevice](../api/windowsupdates-azureaddevice-delete.md)|None|Delete an [azureADDevice](../resources/windowsupdates-azureaddevice.md) object.|
|[Enroll azureADDevice in management](../api/windowsupdates-updatableasset-enrollassets.md)|None|Enroll devices in update management by the deployment service.|
|[Enroll azureADDevice in management (by ID)](../api/windowsupdates-updatableasset-enrollassetsbyid.md)|None|Enroll devices in update management by the deployment service.|
|[Unenroll azureADDevice from management](../api/windowsupdates-updatableasset-unenrollassets.md)|None|Unenroll devices from update management by the deployment service.|
|[Unenroll azureADDevice from management (by ID)](../api/windowsupdates-updatableasset-unenrollassetsbyid.md)|None|Unenroll devices from update management by the deployment service.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|enrollments|[updatableAssetEnrollment](../resources/windowsupdates-updatableassetenrollment.md) collection|Specifies areas of the service in which the device is enrolled. Read-only. Returned by default.|
|errors|[updatableAssetError](../resources/windowsupdates-updatableasseterror.md) collection|Specifies any errors that prevent the device from being enrolled in update management or receving deployed content. Read-only. Returned by default.|
|id|String|An identifier for the device. Key. Not nullable. Read-only. Returned by default. Inherited from [updatableAsset](../resources/windowsupdates-updatableasset.md)|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

