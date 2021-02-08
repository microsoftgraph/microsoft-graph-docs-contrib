---
title: "educationAssignmentDefaults resource type"
description: "Specifies class-level defaults respected by new assignments created in the class"
author: "dipakboyed"
localization_priority: Normal
ms.prod: "education"
doc_type: apiPageType
---

# educationAssignmentDefaults resource type

Namespace: microsoft.graph

Specifies class-level defaults respected by new assignments created in the class. Callers can continue to specify custom-values on each assignment creation if they do not desire the default behaviors.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List educationAssignmentDefaults](../api/educationassignmentdefaults-list.md)|[educationAssignmentDefaults](../resources/educationassignmentdefaults.md) collection|Get a list of the [educationAssignmentDefaults](../resources/educationassignmentdefaults.md) objects and their properties.|
|[Create educationAssignmentDefaults](../api/educationassignmentdefaults-create.md)|[educationAssignmentDefaults](../resources/educationassignmentdefaults.md)|Create a new [educationAssignmentDefaults](../resources/educationassignmentdefaults.md) object.|
|[Get educationAssignmentDefaults](../api/educationassignmentdefaults-get.md)|[educationAssignmentDefaults](../resources/educationassignmentdefaults.md)|Read the properties and relationships of an [educationAssignmentDefaults](../resources/educationassignmentdefaults.md) object.|
|[Update educationAssignmentDefaults](../api/educationassignmentdefaults-update.md)|[educationAssignmentDefaults](../resources/educationassignmentdefaults.md)|Update the properties of an [educationAssignmentDefaults](../resources/educationassignmentdefaults.md) object.|
|[Delete educationAssignmentDefaults](../api/educationassignmentdefaults-delete.md)|None|Deletes an [educationAssignmentDefaults](../resources/educationassignmentdefaults.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedStudentAction|educationAddedStudentAction|class-level default behavior for handling students who are added after the assignment is published. Possible values are: `none`, `assignIfOpen`, `unknownFutureValue`.|
|dueTime|TimeOfDay|class-level default value for due time field. Default value - 23:59:00.|
|notificationChannelUrl|String|Default Teams channel to which notifications will be sent. Default value - null.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationAssignmentDefaults",
  "openType": false
}
-->
``` json
{
  "addedStudentAction": "none",
  "dueTime": "23:59:00",
  "notificationChannelUrl": "https://graph.microsoft.com/beta/teams('id')/channels('id')"
}
```

