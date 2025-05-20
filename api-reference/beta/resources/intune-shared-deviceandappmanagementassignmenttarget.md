---
title: "deviceAndAppManagementAssignmentTarget resource type"
description: "Base type for assignment targets."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 10/04/2024
---

# deviceAndAppManagementAssignmentTarget resource type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Base type for assignment targets.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceAndAppManagementAssignmentFilterId|String|The ID of the filter for the target assignment.|
|deviceAndAppManagementAssignmentFilterType|[deviceAndAppManagementAssignmentFilterType](../resources/intune-shared-deviceandappmanagementassignmentfiltertype.md)|The type of filter of the target assignment i.e. Exclude or Include. Possible values are: `none`, `include`, `exclude`.|

## Relationships
None.

## JSON Representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceAndAppManagementAssignmentTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceAndAppManagementAssignmentTarget",
  "deviceAndAppManagementAssignmentFilterId": "String",
  "deviceAndAppManagementAssignmentFilterType": "String"
}
```
