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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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