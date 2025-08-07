---
title: "userExperienceAnalyticsAutopilotDevicesSummary resource type"
description: "The user experience analytics summary of Devices not windows autopilot ready."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsAutopilotDevicesSummary resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics summary of Devices not windows autopilot ready.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|devicesNotAutopilotRegistered|Int32|The count of intune devices that are not autopilot registerd. Read-only.|
|devicesWithoutAutopilotProfileAssigned|Int32|The count of intune devices not autopilot profile assigned. Read-only.|
|totalWindows10DevicesWithoutTenantAttached|Int32|The count of windows 10 devices that are Intune and co-managed. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAutopilotDevicesSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAutopilotDevicesSummary",
  "devicesNotAutopilotRegistered": 1024,
  "devicesWithoutAutopilotProfileAssigned": 1024,
  "totalWindows10DevicesWithoutTenantAttached": 1024
}
```