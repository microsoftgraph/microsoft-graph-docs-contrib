---
title: "userExperienceAnalyticsCloudManagementDevicesSummary resource type"
description: "The user experience work from anywhere Cloud management devices summary."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# userExperienceAnalyticsCloudManagementDevicesSummary resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience work from anywhere Cloud management devices summary.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|coManagedDeviceCount|Int32|Total number of  co-managed devices. Read-only.|
|intuneDeviceCount|Int32|The count of intune devices that are not autopilot registerd. Read-only.|
|tenantAttachDeviceCount|Int32|Total count of tenant attach devices. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsCloudManagementDevicesSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsCloudManagementDevicesSummary",
  "coManagedDeviceCount": 1024,
  "intuneDeviceCount": 1024,
  "tenantAttachDeviceCount": 1024
}
```