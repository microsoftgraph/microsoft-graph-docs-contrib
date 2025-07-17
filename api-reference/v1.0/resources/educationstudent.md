---
title: "educationStudent resource type"
description: "Additional information added to an educationUser that is present when the primaryRole of a user is `student`."
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# educationStudent resource type

Namespace: microsoft.graph

Additional information added to an [educationUser](educationuser.md) that is present when the primaryRole of a user is `student`.

## Properties

| Property       | Type            | Description                                                               |
| :------------- | :-------------- | :------------------------------------------------------------------------ |
| birthDate      | Date            | Birth date of the student.                                                |
| externalId     | String          | ID of the student in the source system.                                   |
| gender         | educationGender | The possible values are: `female`, `male`, `other`, `unknownFutureValue`. |
| grade          | String          | Current grade level of the student.                                       |
| graduationYear | String          | Year the student is graduating from the school.                           |
| studentNumber  | String          | Student Number.                                                           |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationStudent"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationStudent",
  "birthDate": "DateTimeOffset",
  "externalId": "String",
  "gender": "String",
  "grade": "String",
  "graduationYear": "String",
  "studentNumber": "String"
}
```
