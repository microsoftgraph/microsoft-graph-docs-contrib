---
title: "deviceAppManagement resource type"
description: "Singleton entity that acts as a container for all device and app management functionality."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/12/2024
---

# deviceAppManagement resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Singleton entity that acts as a container for all device and app management functionality.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get deviceAppManagement](../api/intune-unlock-deviceappmanagement-get.md)|[deviceAppManagement](../resources/intune-unlock-deviceappmanagement.md)|Read properties and relationships of the [deviceAppManagement](../resources/intune-unlock-deviceappmanagement.md) object.|
|[Update deviceAppManagement](../api/intune-unlock-deviceappmanagement-update.md)|[deviceAppManagement](../resources/intune-unlock-deviceappmanagement.md)|Update the properties of a [deviceAppManagement](../resources/intune-unlock-deviceappmanagement.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|wdacSupplementalPolicies|[windowsDefenderApplicationControlSupplementalPolicy](../resources/intune-unlock-windowsdefenderapplicationcontrolsupplementalpolicy.md) collection|The collection of Windows Defender Application Control Supplemental Policies.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deviceAppManagement"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAppManagement",
  "id": "String (identifier)"
}
```
