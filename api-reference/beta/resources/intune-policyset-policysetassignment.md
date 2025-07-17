---
title: "policySetAssignment resource type"
description: "A class containing the properties used for PolicySet Assignment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# policySetAssignment resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A class containing the properties used for PolicySet Assignment.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List policySetAssignments](../api/intune-policyset-policysetassignment-list.md)|[policySetAssignment](../resources/intune-policyset-policysetassignment.md) collection|List properties and relationships of the [policySetAssignment](../resources/intune-policyset-policysetassignment.md) objects.|
|[Get policySetAssignment](../api/intune-policyset-policysetassignment-get.md)|[policySetAssignment](../resources/intune-policyset-policysetassignment.md)|Read properties and relationships of the [policySetAssignment](../resources/intune-policyset-policysetassignment.md) object.|
|[Create policySetAssignment](../api/intune-policyset-policysetassignment-create.md)|[policySetAssignment](../resources/intune-policyset-policysetassignment.md)|Create a new [policySetAssignment](../resources/intune-policyset-policysetassignment.md) object.|
|[Delete policySetAssignment](../api/intune-policyset-policysetassignment-delete.md)|None|Deletes a [policySetAssignment](../resources/intune-policyset-policysetassignment.md).|
|[Update policySetAssignment](../api/intune-policyset-policysetassignment-update.md)|[policySetAssignment](../resources/intune-policyset-policysetassignment.md)|Update the properties of a [policySetAssignment](../resources/intune-policyset-policysetassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the PolicySetAssignment.|
|lastModifiedDateTime|DateTimeOffset|Last modified time of the PolicySetAssignment.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The target group of PolicySetAssignment|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policySetAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policySetAssignment",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "target": {
    "@odata.type": "microsoft.graph.scopeTagGroupAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "String",
    "deviceAndAppManagementAssignmentFilterType": "String",
    "targetType": "String",
    "entraObjectId": "String"
  }
}
```