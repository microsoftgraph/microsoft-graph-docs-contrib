---
title: "userExperienceAnalyticsAutopilotDevicesSummary resource type"
description: "The user experience analytics summary of Devices not windows autopilot ready."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# userExperienceAnalyticsAutopilotDevicesSummary resource type

Namespace: microsoft.graph

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
