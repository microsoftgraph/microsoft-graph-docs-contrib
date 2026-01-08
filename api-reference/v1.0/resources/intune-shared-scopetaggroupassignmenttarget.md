---
title: "scopeTagGroupAssignmentTarget resource type"
description: "Represents a Scope Tag Assignment Target."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# scopeTagGroupAssignmentTarget resource type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a Scope Tag Assignment Target.


Inherits from [deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|targetType|[scopeTagTargetType](../resources/intune-shared-scopetagtargettype.md)|The Scope Tag Target Type to Apply the Assignment too. The possible values are: `none`, `user`, `device`, `unknownFutureValue`.|
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
  "targetType": "String",
  "entraObjectId": "String"
}
```