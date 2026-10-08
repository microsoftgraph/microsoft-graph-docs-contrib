---
title: "additionalUserOptions resource type"
description: "Represents additional configuration options for user provisioning and management in industry data synchronization scenarios. This resource provides settings that control how users, particularly students, are processed and configured during data synchronization operations."
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

## Properties

| Property                       | Type    | Description                                                     |
| :----------------------------- | :------ | :-------------------------------------------------------------- |
| allowStudentContactAssociation | Boolean | Indicates whether student contact association should be allowed. |
| studentAgeGroup | microsoft.graph.industryData.studentAgeGroup | Indicates the age group classification for students. The possible values are: `minor`, `notAdult`, `adult`, `unknownFutureValue`. Use `null` to disable age group enforcement. |
| markAllStudentsAsMinors (deprecated) | Boolean | Indicates whether all students should be marked as minors. The **markAllStudentsAsMinors** property is deprecated and will stop returning data on October 15, 2025. Going forward, use the **studentAgeGroup** property. |

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
  "allowStudentContactAssociation": "Boolean",
  "markAllStudentsAsMinors": "Boolean",
  "studentAgeGroup": "String"
}
```
