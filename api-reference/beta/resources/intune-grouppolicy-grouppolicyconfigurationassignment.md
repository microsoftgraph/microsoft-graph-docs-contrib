---
title: "groupPolicyConfigurationAssignment resource type"
description: "The group policy configuration assignment entity assigns one or more AAD groups to a specific group policy configuration."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# groupPolicyConfigurationAssignment resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The group policy configuration assignment entity assigns one or more AAD groups to a specific group policy configuration.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List groupPolicyConfigurationAssignments](../api/intune-grouppolicy-grouppolicyconfigurationassignment-list.md)|[groupPolicyConfigurationAssignment](../resources/intune-grouppolicy-grouppolicyconfigurationassignment.md) collection|List properties and relationships of the [groupPolicyConfigurationAssignment](../resources/intune-grouppolicy-grouppolicyconfigurationassignment.md) objects.|
|[Get groupPolicyConfigurationAssignment](../api/intune-grouppolicy-grouppolicyconfigurationassignment-get.md)|[groupPolicyConfigurationAssignment](../resources/intune-grouppolicy-grouppolicyconfigurationassignment.md)|Read properties and relationships of the [groupPolicyConfigurationAssignment](../resources/intune-grouppolicy-grouppolicyconfigurationassignment.md) object.|
|[Create groupPolicyConfigurationAssignment](../api/intune-grouppolicy-grouppolicyconfigurationassignment-create.md)|[groupPolicyConfigurationAssignment](../resources/intune-grouppolicy-grouppolicyconfigurationassignment.md)|Create a new [groupPolicyConfigurationAssignment](../resources/intune-grouppolicy-grouppolicyconfigurationassignment.md) object.|
|[Delete groupPolicyConfigurationAssignment](../api/intune-grouppolicy-grouppolicyconfigurationassignment-delete.md)|None|Deletes a [groupPolicyConfigurationAssignment](../resources/intune-grouppolicy-grouppolicyconfigurationassignment.md).|
|[Update groupPolicyConfigurationAssignment](../api/intune-grouppolicy-grouppolicyconfigurationassignment-update.md)|[groupPolicyConfigurationAssignment](../resources/intune-grouppolicy-grouppolicyconfigurationassignment.md)|Update the properties of a [groupPolicyConfigurationAssignment](../resources/intune-grouppolicy-grouppolicyconfigurationassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Key of the entity.|
|lastModifiedDateTime|DateTimeOffset|The date and time the entity was last modified.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The type of groups targeted the group policy configuration.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.groupPolicyConfigurationAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupPolicyConfigurationAssignment",
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