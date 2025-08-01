---
title: "readingCoachPassage resource type"
description: "Represents a Reading Coach passage that was practiced by a student."
author: "pateljay-37"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 06/25/2025
---

# readingCoachPassage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Reading Coach passage that was practiced by a student.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/reportsroot-list-readingcoachpassages.md)|[readingCoachPassage](../resources/readingcoachpassage.md) collection|Get a list of [Reading Coach passages](../resources/readingcoachpassage.md) that were practiced by a student.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isReadingCompleted|Boolean|Indicates if the reading passage was completed.|
|languageTag|String|The language of the reading passage.|
|practicedAtDateTime|DateTimeOffset|The date and time when the Reading Coach passage was practiced. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|practiceWords|String collection|The list of challenging words for the student that they can practice further.|
|storyType|readingCoachStoryType|The story type for the reading passage. The possible values are: `aiGenerated`, `readWorks`, `userProvided`, `unknownFutureValue`.|
|studentId|String|ID of the student that practiced the reading passage.|
|timeSpentReadingInSeconds|Double|The time the student spent reading in seconds.|
|wordsAccuracyPercentage|Double|The percentage of words that the student read correctly.|
|wordsPerMinute|Double|The rate the student read at in words per minute.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.readingCoachPassage",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.readingCoachPassage",
  "isReadingCompleted": "Boolean",
  "languageTag": "String",
  "practicedAtDateTime": "String (timestamp)",
  "practiceWords": ["String"],
  "storyType": "String",
  "studentId": "String",
  "timeSpentReadingInSeconds": "Double",
  "wordsAccuracyPercentage": "Double",
  "wordsPerMinute": "Double"
}
```
