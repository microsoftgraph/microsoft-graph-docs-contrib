---
title: "scopeTagGroupAssignmentTarget resource type"
description: "Represents a Scope Tag Assignment Target."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: resourcePageType
---

# scopeTagGroupAssignmentTarget resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a Scope Tag Assignment Target.


Inherits from [deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceAndAppManagementAssignmentFilterId|String|The Id of the filter for the target assignment. Inherited from [deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|
|deviceAndAppManagementAssignmentFilterType|[deviceAndAppManagementAssignmentFilterType](../resources/intune-shared-deviceandappmanagementassignmentfiltertype.md)|The type of filter of the target assignment i.e. Exclude or Include. Inherited from [deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md). Possible values are: `none`, `include`, `exclude`.|
|targetType|[scopeTagTargetType](../resources/intune-shared-scopetagtargettype.md)|The Scope Tag Target Type to Apply the Assignment too. Possible values are: `none`, `user`, `device`, `unknownFutureValue`.|
|entraObjectId|String|The Entra Object Id that is the target of the assignment.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.scopeTagGroupAssignmentTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.scopeTagGroupAssignmentTarget",
  "deviceAndAppManagementAssignmentFilterId": "String",
  "deviceAndAppManagementAssignmentFilterType": "String",
  "targetType": "String",
  "entraObjectId": "String"
}
```