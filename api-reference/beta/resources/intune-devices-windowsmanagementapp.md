---
title: "windowsManagementApp resource type"
description: "Windows management app entity."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsManagementApp resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows management app entity.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[Get windowsManagementApp](../api/intune-devices-windowsmanagementapp-get.md)|[windowsManagementApp](../resources/intune-devices-windowsmanagementapp.md)|Read properties and relationships of the [windowsManagementApp](../resources/intune-devices-windowsmanagementapp.md) object.|
|[Update windowsManagementApp](../api/intune-devices-windowsmanagementapp-update.md)|[windowsManagementApp](../resources/intune-devices-windowsmanagementapp.md)|Update the properties of a [windowsManagementApp](../resources/intune-devices-windowsmanagementapp.md) object.|
|[setAsManagedInstaller action](../api/intune-devices-windowsmanagementapp-setasmanagedinstaller.md)|None|Set the Managed Installer status for the caller tenant|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the Windows management app|
|availableVersion|String|Windows management app available version.|
|managedInstaller|[managedInstallerStatus](../resources/intune-devices-managedinstallerstatus.md)|Managed Installer Status. Possible values are: `disabled`, `enabled`.|
|managedInstallerConfiguredDateTime|String|Managed Installer Configured Date Time|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|healthStates|[windowsManagementAppHealthState](../resources/intune-devices-windowsmanagementapphealthstate.md) collection|The list of health states for installed Windows management app.|

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsManagementApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsManagementApp",
  "id": "String (identifier)",
  "availableVersion": "String",
  "managedInstaller": "String",
  "managedInstallerConfiguredDateTime": "String"
}
```