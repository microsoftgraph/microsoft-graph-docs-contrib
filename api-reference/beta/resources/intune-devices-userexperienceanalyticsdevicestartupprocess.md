---
title: "userExperienceAnalyticsDeviceStartupProcess resource type"
description: "The user experience analytics device startup process details."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsDeviceStartupProcess resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics device startup process details.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsDeviceStartupProcesses](../api/intune-devices-userexperienceanalyticsdevicestartupprocess-list.md)|[userExperienceAnalyticsDeviceStartupProcess](../resources/intune-devices-userexperienceanalyticsdevicestartupprocess.md) collection|List properties and relationships of the [userExperienceAnalyticsDeviceStartupProcess](../resources/intune-devices-userexperienceanalyticsdevicestartupprocess.md) objects.|
|[Get userExperienceAnalyticsDeviceStartupProcess](../api/intune-devices-userexperienceanalyticsdevicestartupprocess-get.md)|[userExperienceAnalyticsDeviceStartupProcess](../resources/intune-devices-userexperienceanalyticsdevicestartupprocess.md)|Read properties and relationships of the [userExperienceAnalyticsDeviceStartupProcess](../resources/intune-devices-userexperienceanalyticsdevicestartupprocess.md) object.|
|[Create userExperienceAnalyticsDeviceStartupProcess](../api/intune-devices-userexperienceanalyticsdevicestartupprocess-create.md)|[userExperienceAnalyticsDeviceStartupProcess](../resources/intune-devices-userexperienceanalyticsdevicestartupprocess.md)|Create a new [userExperienceAnalyticsDeviceStartupProcess](../resources/intune-devices-userexperienceanalyticsdevicestartupprocess.md) object.|
|[Delete userExperienceAnalyticsDeviceStartupProcess](../api/intune-devices-userexperienceanalyticsdevicestartupprocess-delete.md)|None|Deletes a [userExperienceAnalyticsDeviceStartupProcess](../resources/intune-devices-userexperienceanalyticsdevicestartupprocess.md).|
|[Update userExperienceAnalyticsDeviceStartupProcess](../api/intune-devices-userexperienceanalyticsdevicestartupprocess-update.md)|[userExperienceAnalyticsDeviceStartupProcess](../resources/intune-devices-userexperienceanalyticsdevicestartupprocess.md)|Update the properties of a [userExperienceAnalyticsDeviceStartupProcess](../resources/intune-devices-userexperienceanalyticsdevicestartupprocess.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics device startup process. Supports: $select, $OrderBy. Read-only.|
|managedDeviceId|String|The Intune device id of the device. Supports: $select, $OrderBy. Read-only.|
|processName|String|The name of the process. Examples: outlook, excel. Supports: $select, $OrderBy. Read-only.|
|productName|String|The product name of the process. Examples: Microsoft Outlook, Microsoft Excel. Supports: $select, $OrderBy. Read-only.|
|publisher|String|The publisher of the process. Examples: Microsoft Corporation, Contoso Corp. Supports: $select, $OrderBy. Read-only.|
|startupImpactInMs|Int32|The impact of startup process on device boot time in milliseconds. Supports: $select, $OrderBy. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsDeviceStartupProcess"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceStartupProcess",
  "id": "String (identifier)",
  "managedDeviceId": "String",
  "processName": "String",
  "productName": "String",
  "publisher": "String",
  "startupImpactInMs": 1024
}
```
