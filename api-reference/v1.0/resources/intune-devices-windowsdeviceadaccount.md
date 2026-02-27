---
title: "windowsDeviceADAccount resource type"
description: "Intune Devices Windowsdeviceadaccount Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsDeviceADAccount resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.




Inherits from [windowsDeviceAccount](../resources/intune-devices-windowsdeviceaccount.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|password|String| Inherited from [windowsDeviceAccount](../resources/intune-devices-windowsdeviceaccount.md)|
|domainName|String||
|userName|String||

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsDeviceADAccount"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsDeviceADAccount",
  "password": "String",
  "domainName": "String",
  "userName": "String"
}
```