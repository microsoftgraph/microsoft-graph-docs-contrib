---
title: "organizationalUnitAssignmentInsertPriorityConflictSetting resource type"
description: "Represents conflict settings for an Organizational Unit (OU) payload assignment. Conflict settings are used to resolve relative priority of assigned payloads within an OU's conflict area. This helps in resolving conflicts when a same device/user setting is updated by different payloads. The payload with the lower rank takes precedence."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
---

# organizationalUnitAssignmentInsertPriorityConflictSetting resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents conflict settings for an Organizational Unit (OU) payload assignment. Conflict settings are used to resolve relative priority of assigned payloads within an OU's conflict area. This helps in resolving conflicts when a same device/user setting is updated by different payloads. The payload with the lower rank takes precedence.


Inherits from [organizationalUnitAssignmentConflictSetting](../resources/intune-deviceconfigv2-organizationalunitassignmentconflictsetting.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentOverride|[organizationalUnitAssignmentOverride](../resources/intune-deviceconfigv2-organizationalunitassignmentoverride.md)|Default is allowed. Indicates if a payload assignment can override the inherited assignments from ancestors in an Organizational Unit (OU) lineage. Possible values are allowed and denied. At a particular hierarchy depth, relative rank order is evaluated first to determine the winner. The override setting is used only to resolve conflicts between ancestors and descendants in a hierarchy. For example, consider a hierarchy with OU1 and OU2, where OU1 is the parent of OU2. If both OU1 and OU2 have allowed, the payload assigned to OU2 can override the payload assigned to OU1. However, if either OU1 or OU2 has denied, the payload assigned to OU1 will override the payload assigned to OU2. Inherited from [organizationalUnitAssignmentConflictSetting](../resources/intune-deviceconfigv2-organizationalunitassignmentconflictsetting.md). Possible values are: `allowed`, `denied`, `unknown`, `unknownFutureValue`.|
|versionNumber|Int32|Indicates the version of the ConflictSetting. It is updated whenever a conflict setting is modified. Valid values 0 to 5000 Inherited from [organizationalUnitAssignmentConflictSetting](../resources/intune-deviceconfigv2-organizationalunitassignmentconflictsetting.md)|
|priority|Int32|Indicates the priority of a payload assigned to an OU, conflict area, and override combination. A conflict area is a combination of a management area and platform type. This denotes the relative priority of assignments, with lower-priority assignments having higher priority. The priority is used to resolve conflicts for payloads within the same conflict area. Valid values 1 to 5000|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.organizationalUnitAssignmentInsertPriorityConflictSetting"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.organizationalUnitAssignmentInsertPriorityConflictSetting",
  "assignmentOverride": "String",
  "versionNumber": 1024,
  "priority": 1024
}
```
