---
title: "azureADDeviceRegistrationError resource type"
description: "An error in the registration process of a Microsoft Entra device that prevents Windows Autopatch from enrolling the device in update management or deploying content to the device."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# azureADDeviceRegistrationError resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An error in the registration process of an [Microsoft Entra device](../resources/windowsupdates-azureaddevice.md) that prevents Windows Autopatch from enrolling the device in update management or deploying content to the device.

Inherits from [updatableAssetError](../resources/windowsupdates-updatableasseterror.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|reason|microsoft.graph.windowsUpdates.azureADDeviceRegistrationErrorReason|The reason why the registration encountered an error. The possible values are: `invalidGlobalDeviceId`, `invalidAzureADDeviceId`, `missingTrustType`, `invalidAzureADJoin`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.azureADDeviceRegistrationError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.azureADDeviceRegistrationError",
  "reason": "String"
}
```
