---
title: "readingAssignmentSubmission resource type"
description: "Represents a reading assignment that was submitted by a student."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/29/2024
---

# readingAssignmentSubmission resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a reading assignment that was submitted by a student.
Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/reportsroot-list-readingassignmentsubmissions.md)|[readingAssignmentSubmission](../resources/readingassignmentsubmission.md) collection|Get a list of [reading assignments](../resources/readingassignmentsubmission.md) that were submitted by a student.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accuracyScore|Double|Accuracy score of the reading progress.|
|action|String|Indicates whether the submission is an attempt by the student or a miscue edit done by the educator. The possible values are `Attempt` and `EditMiscue`.|
|assignmentId|String|ID of the assignment with which this submission is associated.|
|challengingWords|[challengingWord](../resources/challengingword.md) collection|List of words that the student found challenging during the reading session.|
|classId|String|ID of the class this reading progress is associated with.|
|insertions|Int64|Insertions of the reading progress.|
|mispronunciations|Int64|Mispronunciations of the reading progress.|
|missedExclamationMarks|Int64 |Number of exclamation marks missed in the reading passage.|
|missedPeriods|Int64 |Number of periods missed in the reading passage.|
|missedQuestionMarks|Int64|Number of question marks missed in the reading passage.|
|missedShorts|Int64|Number of short words missed during the reading session.|
|monotoneScore|Double|Score that reflects the student's use of intonation and expression. Lower scores indicate more monotone reading.|
|omissions|Int64|Omissions of the reading progress.|
|repetitions|Int64|Number of times the student repeated words or phrases during the reading session.|
|selfCorrections|Int64|Number of times the student self-corrected their reading errors.|
|studentId|String|ID of the user this reading progress is associated with.|
|submissionId|String|ID of the submission this reading progress is associated with.|
|submissionDateTime|DateTimeOffset|Date and time of the submission this reading progress is associated with. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|unexpectedPauses|Int64|Number of unexpected pauses made during the reading session.|
|wordCount|Int64|Words count of the reading progress.|
|wordsPerMinute|Double|Words per minute of the reading progress.|

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
  "accuracyScore": "Double",
  "action": "String",
  "assignmentId": "String",
  "challengingWords": [{"@odata.type": "microsoft.graph.challengingWord"}],
  "classId": "String",
  "insertions": "Int64",
  "mispronunciations": "Int64",
  "missedExclamationMarks": "Int64",
  "missedPeriods": "Int64",
  "missedQuestionMarks": "Int64",
  "missedShorts": "Int64",
  "monotoneScore": "Double",
  "omissions": "Int64",
  "repetitions": "Int64",
  "selfCorrections": "Int64",
  "studentId": "String",
  "submissionDateTime": "String (timestamp)",
  "submissionId": "String",
  "unexpectedPauses": "Int64",
  "wordCount": "Int64",
  "wordsPerMinute": "Double"
}
```

