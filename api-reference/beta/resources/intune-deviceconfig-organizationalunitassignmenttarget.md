---
title: "organizationalUnitAssignmentTarget resource type"
description: "Represents Organizational Unit (OU) assignment target for a payload. It also contains the priority of the assignment within its Conflict Area and stores information about any associated assignment filters."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# organizationalUnitAssignmentTarget resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents Organizational Unit (OU) assignment target for a payload. It also contains the priority of the assignment within its Conflict Area and stores information about any associated assignment filters.


Inherits from [deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceAndAppManagementAssignmentFilterId|String|The Id of the filter for the target assignment. Inherited from [deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|
|deviceAndAppManagementAssignmentFilterType|[deviceAndAppManagementAssignmentFilterType](../resources/intune-shared-deviceandappmanagementassignmentfiltertype.md)|The type of filter of the target assignment i.e. Exclude or Include. Inherited from [deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md). The possible values are: `none`, `include`, `exclude`.|
|organizationalUnitId|String|Indicates the Entra ID of the Organizational Unit (OU) to which the payload is assigned. The payload assignment can be direct or inherited to an OU. This Organizational Unit (OU) ID refers to the Organizational Unit (OU) to which the assignment was directly assigned. Read-Only.|
|assignmentConflictSetting|[organizationalUnitAssignmentConflictSetting](../resources/intune-deviceconfig-organizationalunitassignmentconflictsetting.md)|Indicates rules to resolve conflicting settings for an Organizational Unit (OU) assignment. These settings help determine the relative order of payloads within a conflict area, as set by the admin during assignment. Read-Only.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalUnitAssignmentTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalUnitAssignmentTarget",
  "deviceAndAppManagementAssignmentFilterId": "String",
  "deviceAndAppManagementAssignmentFilterType": "String",
  "organizationalUnitId": "String",
  "assignmentConflictSetting": {
    "@odata.type": "microsoft.graph.organizationalUnitAssignmentConflictSetting",
    "assignmentOverride": "String",
    "versionNumber": 1024
  }
}
```