---
title: "educationTeacher resource type"
description: "Additional information added to an educationUser that is present when the primaryRole of a user is `teacher`."
author: "mmast-msft"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# Teacher resource type

Namespace: microsoft.graph

Additional information added to an [educationUser](educationuser.md) that is present when the primaryRole of a user is `teacher`.

## Properties

| Property      | Type   | Description                             |
| :------------ | :----- | :-------------------------------------- |
| externalId    | String | ID of the teacher in the source system. |
| teacherNumber | String | Teacher number.                         |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationTeacher"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.educationTeacher",
  "externalId": "String",
  "teacherNumber": "String"
}
```
