---
title: "androidDeviceOwnerKioskModeApp resource type"
description: "An application on the Android Device Owner Managed Home Screen"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidDeviceOwnerKioskModeApp resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An application on the Android Device Owner Managed Home Screen


Inherits from [androidDeviceOwnerKioskModeFolderItem](../resources/intune-deviceconfig-androiddeviceownerkioskmodefolderitem.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|package|String|Package name of application|
|className|String|Class name of application|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidDeviceOwnerKioskModeApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerKioskModeApp",
  "package": "String",
  "className": "String"
}
```
