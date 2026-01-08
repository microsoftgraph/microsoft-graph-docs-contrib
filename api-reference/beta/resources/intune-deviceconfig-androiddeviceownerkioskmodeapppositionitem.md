---
title: "androidDeviceOwnerKioskModeAppPositionItem resource type"
description: "An item in the list of app positions that sets the order of items on the Managed Home Screen"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidDeviceOwnerKioskModeAppPositionItem resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An item in the list of app positions that sets the order of items on the Managed Home Screen

## Properties
|Property|Type|Description|
|:---|:---|:---|
|position|Int32|Position of the item on the grid. Valid values 0 to 9999999|
|item|[androidDeviceOwnerKioskModeHomeScreenItem](../resources/intune-deviceconfig-androiddeviceownerkioskmodehomescreenitem.md)|Item to be arranged|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidDeviceOwnerKioskModeAppPositionItem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerKioskModeAppPositionItem",
  "position": 1024,
  "item": {
    "@odata.type": "microsoft.graph.androidDeviceOwnerKioskModeWeblink",
    "label": "String",
    "link": "String"
  }
}
```