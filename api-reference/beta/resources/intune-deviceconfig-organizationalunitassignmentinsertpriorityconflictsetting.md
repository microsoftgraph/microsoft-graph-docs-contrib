---
title: "organizationalUnitAssignmentInsertPriorityConflictSetting resource type"
description: "Represents conflict settings for an Organizational Unit (OU) payload assignment. Intune uses this ranking to resolve conflicts at a target level, with the payload having the lower priority value taking precedence over those with higher priority values."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# organizationalUnitAssignmentInsertPriorityConflictSetting resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents conflict settings for an Organizational Unit (OU) payload assignment. Intune uses this ranking to resolve conflicts at a target level, with the payload having the lower priority value taking precedence over those with higher priority values.


Inherits from [organizationalUnitAssignmentConflictSetting](../resources/intune-deviceconfig-organizationalunitassignmentconflictsetting.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentOverride|[organizationalUnitAssignmentOverride](../resources/intune-deviceconfig-organizationalunitassignmentoverride.md)|Default is allowed. Indicates if a payload assignment can override the inherited assignments from ancestors in an Organizational Unit (OU) lineage. Possible values are allowed and denied. At a particular hierarchy depth, relative rank order is evaluated first to determine the winner. The override setting is used only to resolve conflicts between ancestors and descendants in a hierarchy. For example, consider a hierarchy with OU1 and OU2, where OU1 is the parent of OU2. If both OU1 and OU2 have allowed, the payload assigned to OU2 can override the payload assigned to OU1. However, if either OU1 or OU2 has denied, the payload assigned to OU1 will override the payload assigned to OU2. Inherited from [organizationalUnitAssignmentConflictSetting](../resources/intune-deviceconfig-organizationalunitassignmentconflictsetting.md). The possible values are: `allowed`, `denied`, `unknown`, `unknownFutureValue`.|
|versionNumber|Int32|Indicates the version of the ConflictSetting. It is updated whenever a conflict setting is modified. Valid values 0 to 5000 Inherited from [organizationalUnitAssignmentConflictSetting](../resources/intune-deviceconfig-organizationalunitassignmentconflictsetting.md)|
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
