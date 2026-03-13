---
title: "updatableAssetError resource type"
description: "An abstract type that represents an error which prevents Windows Autopatch from enrolling an azureADDevice in update management, or deploying content to the device."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# updatableAssetError resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents an error which prevents Windows Autopatch from enrolling an [azureADDevice](../resources/windowsupdates-azureaddevice.md) in update management, or deploying content to the device. 

All updatable asset errors are of the derived type, [azureADDeviceRegistrationError](../resources/windowsupdates-azureaddeviceregistrationerror.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.updatableAssetError"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.updatableAssetError"
}
```

