---
title: "readingAssignmentSubmission resource type"
description: "Represents a reading assignment that was submitted by a student."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# readingAssignmentSubmission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a reading assignment that was submitted by a student.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/readingassignmentsubmission-get.md)|[readingAssignmentSubmission](../resources/readingassignmentsubmission.md)|Read the properties and relationships of a [readingAssignmentSubmission](../resources/readingassignmentsubmission.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentId|String|ID of the assignment with which this submission is associated.|
|classId|String|ID of the class this reading progress is associated with.|
|submissionId|String|ID of the submission this reading progress is associated with.|
|studentId|String|ID of the user this reading progress is associated with.|
|submissionDateTime|DateTime|Date and time of the submission this reading progress is associated with.|
|accuracyScore|Double|Accuracy score of the reading progress.|
|wordsPerMinute|Double|Words per minute of the reading progress.|
|wordCount|Int64|Words count of the reading progress.|
|mispronunciations|Int64|Mispronunciations of the reading progress.|
|omissions|Int64|Omissions of the reading progress.|
|insertions|Int64|Insertions of the reading progress.|
|selfCorrections|Int64|Number of times the student self-corrected their reading errors.|
|repetitions|Int64|Number of times the student repeated words or phrases during the reading session.|
|monotoneScore|Double|Score reflecting the student's use of intonation and expression, with lower scores indicating more monotone reading.|
|missedShorts|Int64|Number of short words missed during the reading session.|
|missedExclamationMarks|Int64 |Number of exclamation marks missed in the reading passage.|
|missedPeriods|Int64 |Number of periods missed in the reading passage.|
|missedQuestionMarks|Int64|Number of question marks missed in the reading passage.|
|unexpectedPauses|Int64|Number of unexpected pauses made during the reading session.|
|challengingWords|Collection|List of words that the student found challenging during the reading session.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.readingAssignmentSubmission",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.readingAssignmentSubmission",
  "id": "String (identifier)",
  "action": "String",
  "assignmentId": "String",
  "classId": "String",
  "submissionId": "String",
  "studentId": "String",
  "submissionDateTime": "String (timestamp)",
  "accuracyScore": "Double",
  "wordsPerMinute": "Double",
  "wordCount": "Integer",
  "mispronunciations": "Integer",
  "omissions": "Integer",
  "insertions": "Integer",
  "selfCorrections": "Integer",
  "repetitions": "Integer",
  "monotoneScore": "Double",
  "missedShorts": "Integer",
  "missedExclamationMarks": "Integer",
  "missedPeriods": "Integer",
  "missedQuestionMarks": "Integer",
  "unexpectedPauses": "Integer",
  "challengingWords": [
    {
      "@odata.type": "microsoft.graph.challengingWord"
    }
  ]
}
```

