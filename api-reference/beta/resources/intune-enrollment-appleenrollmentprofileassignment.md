---
title: "appleEnrollmentProfileAssignment resource type"
description: "An assignment of an Apple profile."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# appleEnrollmentProfileAssignment resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An assignment of an Apple profile.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List appleEnrollmentProfileAssignments](../api/intune-enrollment-appleenrollmentprofileassignment-list.md)|[appleEnrollmentProfileAssignment](../resources/intune-enrollment-appleenrollmentprofileassignment.md) collection|List properties and relationships of the [appleEnrollmentProfileAssignment](../resources/intune-enrollment-appleenrollmentprofileassignment.md) objects.|
|[Get appleEnrollmentProfileAssignment](../api/intune-enrollment-appleenrollmentprofileassignment-get.md)|[appleEnrollmentProfileAssignment](../resources/intune-enrollment-appleenrollmentprofileassignment.md)|Read properties and relationships of the [appleEnrollmentProfileAssignment](../resources/intune-enrollment-appleenrollmentprofileassignment.md) object.|
|[Create appleEnrollmentProfileAssignment](../api/intune-enrollment-appleenrollmentprofileassignment-create.md)|[appleEnrollmentProfileAssignment](../resources/intune-enrollment-appleenrollmentprofileassignment.md)|Create a new [appleEnrollmentProfileAssignment](../resources/intune-enrollment-appleenrollmentprofileassignment.md) object.|
|[Delete appleEnrollmentProfileAssignment](../api/intune-enrollment-appleenrollmentprofileassignment-delete.md)|None|Deletes a [appleEnrollmentProfileAssignment](../resources/intune-enrollment-appleenrollmentprofileassignment.md).|
|[Update appleEnrollmentProfileAssignment](../api/intune-enrollment-appleenrollmentprofileassignment-update.md)|[appleEnrollmentProfileAssignment](../resources/intune-enrollment-appleenrollmentprofileassignment.md)|Update the properties of a [appleEnrollmentProfileAssignment](../resources/intune-enrollment-appleenrollmentprofileassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The key of the assignment.|
|target|[deviceAndAppManagementAssignmentTarget](../resources/intune-shared-deviceandappmanagementassignmenttarget.md)|The assignment target for the Apple user initiated deployment profile.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appleEnrollmentProfileAssignment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appleEnrollmentProfileAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.scopeTagGroupAssignmentTarget",
    "deviceAndAppManagementAssignmentFilterId": "String",
    "deviceAndAppManagementAssignmentFilterType": "String",
    "targetType": "String",
    "entraObjectId": "String"
  }
}
```