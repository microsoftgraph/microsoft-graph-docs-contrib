---
title: "userExperienceAnalyticsDeviceStartupProcessPerformance resource type"
description: "The user experience analytics device startup process performance."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsDeviceStartupProcessPerformance resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics device startup process performance.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsDeviceStartupProcessPerformances](../api/intune-devices-userexperienceanalyticsdevicestartupprocessperformance-list.md)|[userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md) collection|List properties and relationships of the [userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md) objects.|
|[Get userExperienceAnalyticsDeviceStartupProcessPerformance](../api/intune-devices-userexperienceanalyticsdevicestartupprocessperformance-get.md)|[userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md)|Read properties and relationships of the [userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md) object.|
|[Create userExperienceAnalyticsDeviceStartupProcessPerformance](../api/intune-devices-userexperienceanalyticsdevicestartupprocessperformance-create.md)|[userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md)|Create a new [userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md) object.|
|[Delete userExperienceAnalyticsDeviceStartupProcessPerformance](../api/intune-devices-userexperienceanalyticsdevicestartupprocessperformance-delete.md)|None|Deletes a [userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md).|
|[Update userExperienceAnalyticsDeviceStartupProcessPerformance](../api/intune-devices-userexperienceanalyticsdevicestartupprocessperformance-update.md)|[userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md)|Update the properties of a [userExperienceAnalyticsDeviceStartupProcessPerformance](../resources/intune-devices-userexperienceanalyticsdevicestartupprocessperformance.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the user experience analytics device startup process performance. Supports: $select, $OrderBy. Read-only.|
|processName|String|The name of the startup process. Examples: outlook, excel. Supports: $select, $OrderBy. Read-only.|
|productName|String|The product name of the startup process. Examples: Microsoft Outlook, Microsoft Excel. Supports: $select, $OrderBy. Read-only.|
|publisher|String|The publisher of the startup process. Examples: Microsoft Corporation, Contoso Corp. Supports: $select, $OrderBy. Read-only.|
|deviceCount|Int64|The count of devices which initiated this process on startup. Supports: $filter, $select, $OrderBy. Read-only.|
|medianImpactInMs|Int64|The median impact of startup process on device boot time in milliseconds. Supports: $filter, $select, $OrderBy. Read-only.|
|totalImpactInMs|Int64|The total impact of startup process on device boot time in milliseconds. Supports: $filter, $select, $OrderBy. Read-only.|
|medianImpactInMs2|Int64|The median impact of startup process on device boot time in milliseconds. Supports: $filter, $select, $OrderBy. Read-only.|
|totalImpactInMs2|Int64|The total impact of startup process on device boot time in milliseconds. Supports: $filter, $select, $OrderBy. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsDeviceStartupProcessPerformance"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsDeviceStartupProcessPerformance",
  "id": "String (identifier)",
  "processName": "String",
  "productName": "String",
  "publisher": "String",
  "deviceCount": 1024,
  "medianImpactInMs": 1024,
  "totalImpactInMs": 1024,
  "medianImpactInMs2": 1024,
  "totalImpactInMs2": 1024
}
```
