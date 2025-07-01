---
title: "additionalUserOptions resource type"
description: "The different management choices for the users to be provisioned."
author: "mohanrajc"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: resourcePageType
ms.date: 06/30/2025
---

# additionalUserOptions resource type

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents additional configuration options for user provisioning and management in industry data synchronization scenarios. This resource provides settings that control how users, particularly students, are processed and configured during data synchronization operations.

> [!NOTE]
> This resource is deprecated. The `markAllStudentsAsMinors` property is deprecated and will be removed on October 15, 2025. Use the `studentAgeGroup` property instead.

## Properties

| Property                       | Type    | Description                                                     |
| :----------------------------- | :------ | :-------------------------------------------------------------- |
| allowStudentContactAssociation | Boolean | Indicates whether student contact association should be allowed. |
| markAllStudentsAsMinors (deprecated) | Boolean | Indicates whether all students should be marked as minors.**Deprecated.** Use `studentAgeGroup` instead. |
| studentAgeGroup | microsoft.graph.industryData.studentAgeGroup | Age group classification for students. Possible values: `minor`, `notAdult`, `adult`, `unknownFutureValue`. Use `null` to disable age group enforcement. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.industryData.additionalUserOptions"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.industryData.additionalUserOptions",
  "markAllStudentsAsMinors": "Boolean",
  "allowStudentContactAssociation": "Boolean",
  "studentAgeGroup": "String"
}
```
