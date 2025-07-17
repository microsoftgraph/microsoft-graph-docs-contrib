---
title: "userExperienceAnalyticsCloudIdentityDevicesSummary resource type"
description: "The user experience analytics work from anywhere cloud identity devices summary."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# userExperienceAnalyticsCloudIdentityDevicesSummary resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics work from anywhere cloud identity devices summary.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceWithoutCloudIdentityCount|Int32|The count of devices that are not cloud identity. Read-only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsCloudIdentityDevicesSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsCloudIdentityDevicesSummary",
  "deviceWithoutCloudIdentityCount": 1024
}
```
