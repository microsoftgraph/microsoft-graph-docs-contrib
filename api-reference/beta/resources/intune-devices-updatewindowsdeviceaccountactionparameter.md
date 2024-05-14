---
title: "updateWindowsDeviceAccountActionParameter resource type"
description: "Intune Devices Updatewindowsdeviceaccountactionparameter Resources ."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# updateWindowsDeviceAccountActionParameter resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.



## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceAccount|[windowsDeviceAccount](../resources/intune-devices-windowsdeviceaccount.md)||
|passwordRotationEnabled|Boolean||
|calendarSyncEnabled|Boolean||
|deviceAccountEmail|String||
|exchangeServer|String||
|sessionInitiationProtocalAddress|String||

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.updateWindowsDeviceAccountActionParameter"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.updateWindowsDeviceAccountActionParameter",
  "deviceAccount": {
    "@odata.type": "microsoft.graph.windowsDeviceAccount",
    "password": "String"
  },
  "passwordRotationEnabled": true,
  "calendarSyncEnabled": true,
  "deviceAccountEmail": "String",
  "exchangeServer": "String",
  "sessionInitiationProtocalAddress": "String"
}
```