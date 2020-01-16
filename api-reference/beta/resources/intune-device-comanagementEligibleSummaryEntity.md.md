---
title: "comanagementEligibleSummaryEntity resource type"
description: "comanagementEligibleSummaryEntity resource type"
author: "rolyon"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# comanagementEligibleSummaryEntity resource type

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Managed Device Mobile App Configuration State for a given device.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List comanagementEligibleSummaryEntity](../api/intune-device-comanagementEligibleSummaryEntity-list.md)|comanagementEligibleSummaryEntity collection|List properties and relationships of the comanagementEligibleSummaryEntity objects.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Id of the EligibleDeviceSummaryEntity|
|coManagedCount|Int32|Count of devices already CoManaged|
|eligibleCount|Int32|Count of devices fully eligible for CoManagement|
|eligibleButNotAadJoinedCount|Int32|Count of devices eligible for CoManagement but not yet joined to Azure Active Directory|
|needsOSUpdateCount|Int32|Count of devices that will be eligible for CoManagement after an OS update|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.comanagementEligibleSummaryEntity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.comanagementEligibleSummaryEntity",
  "id": "String (identifier)",
  "coManagedCount": 1024,
  "eligibleCount": 1024,
  "eligibleButNotAadJoinedCount": 1024,
  "needsOSUpdateCount": 1024
}
```

