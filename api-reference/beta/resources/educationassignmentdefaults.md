---
title: "educationAssignmentDefaults resource type"
description: "Specifies class-level defaults respected by new assignments created in a class."
author: "dipakboyed"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
toc.title: Assignment defaults
ms.date: 06/08/2024
---

# educationAssignmentDefaults resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies class-level defaults respected by new assignments created in a class. Callers can continue to specify custom values on each assignment creation if they don't want the default behaviors.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/educationassignmentdefaults-get.md)|[educationAssignmentDefaults](../resources/educationassignmentdefaults.md)|Read the properties and relationships of an [educationAssignmentDefaults](../resources/educationassignmentdefaults.md) object.|
|[Update](../api/educationassignmentdefaults-update.md)|[educationAssignmentDefaults](../resources/educationassignmentdefaults.md)|Update the properties of an [educationAssignmentDefaults](../resources/educationassignmentdefaults.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addedStudentAction|educationAddedStudentAction|Class-level default behavior for handling students who are added after the assignment is published. Possible values are: `none`, `assignIfOpen`.|
|addToCalendarAction| educationAddToCalendarOptions|Optional field to control adding assignments to students' and teachers' calendars when the assignment is published. The possible values are: `none`, `studentsAndPublisher`, `studentsAndTeamOwners`, `unknownFutureValue`, and `studentsOnly`. Use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `studentsOnly`. The default value is `none`.|
|dueTime|TimeOfDay|Class-level default value for due time field. Default value is `23:59:00`.|
|id|String|Unique identifier for the **educationAssignmentDefaults**.|
|notificationChannelUrl|String|Default Teams channel to which notifications are sent. Default value is `null`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.educationAssignmentDefaults",
  "openType": false
}
-->
``` json
{
  "addedStudentAction": "String",
  "addToCalendarAction": "String",  
  "dueTime": "String (timestamp)",
  "id": "String (identifier)",
  "notificationChannelUrl": "String"
}
```

