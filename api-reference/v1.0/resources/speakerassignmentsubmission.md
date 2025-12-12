---
title: "speakerAssignmentSubmission resource type"
description: "Represents a speaker assignment that was submitted by a student."
author: "GatadiMegha"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 08/04/2025
---

# speakerAssignmentSubmission resource type

Namespace: microsoft.graph

Represents a speaker assignment that was submitted by a student.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/reportsroot-list-speakerassignmentsubmissions.md)|[speakerAssignmentSubmission](../resources/speakerassignmentsubmission.md) collection|Get a list of [speaker assignments](../resources/speakerassignmentsubmission.md) that were submitted by a student.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignmentId|String|ID of the assignment with which this submission is associated.|
|averageWordsPerMinutePace|Int64|The average speaking pace of the student, measured in words per minute.|
|classId|String|ID of the class this speaker progress is associated with.|
|fillerWordsOccurrencesCount|Int64|The number of times the student was flagged by Speaker Coach for using a filler word.|
|incorrectCameraDistanceOccurrencesCount|Int64|The number of times the student was flagged by Speaker Coach for being either too close or too far away from the camera.|
|lengthOfSubmissionInSeconds|Double|The length of the student submission in seconds.|
|lostEyeContactOccurrencesCount|Int64|The number of times the student was flagged by Speaker Coach for losing eye contact with the camera.|
|monotoneOccurrencesCount|Int64|The number of times the student was flagged by Speaker Coach for speaking in monotone.|
|nonInclusiveLanguageOccurrencesCount|Int64|The number of times the student was flagged by Speaker Coach for using non-inclusive or sensitive language.|
|obstructedViewOccurrencesCount|Int64|The number of times the student was flagged by Speaker Coach for obstructing the view of their face.|
|repetitiveLanguageOccurrencesCount|Int64|The number of times the student was flagged by Speaker Coach for using repetitive language.|
|submissionId|String|ID of the submission this speaker progress is associated with.|
|studentId|String|ID of the user this speaker progress is associated with.|
|submissionDateTime|DateTimeOffset|Date and time of the submission this speaker progress is associated with. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|topFillerWords|String collection|The filler words used most by the student.|
|topMispronouncedWords|String collection|The words mispronounced most by the student.|
|topNonInclusiveWordsAndPhrases|String collection|The non-inclusive or sensitive words and phrases most used by the student.|
|topRepetitiveWordsAndPhrases|String collection|The words and phrases most repeated by the student.|
|wordsSpokenCount|Int64|Total number of words spoken by the student in the submission.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.speakerAssignmentSubmission",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.speakerAssignmentSubmission",
  "assignmentId": "String",
  "averageWordsPerMinutePace": "Int64",
  "classId": "String",
  "fillerWordsOccurrencesCount": "Int64",
  "incorrectCameraDistanceOccurrencesCount": "Int64",
  "lengthOfSubmissionInSeconds": "Double",
  "lostEyeContactOccurrencesCount": "Int64",
  "monotoneOccurrencesCount": "Int64",
  "nonInclusiveLanguageOccurrencesCount": "Int64",
  "obstructedViewOccurrencesCount": "Int64",
  "repetitiveLanguageOccurrencesCount": "Int64",
  "submissionId": "String",
  "omissions": "Int64",
  "repetitions": "Int64",
  "selfCorrections": "Int64",
  "studentId": "String",
  "submissionDateTime": "String (timestamp)",
  "topFillerWords": ["String"],
  "topMispronouncedWords": ["String"],
  "topNonInclusiveWordsAndPhrases": ["String"],
  "topRepetitiveWordsAndPhrases": ["String"],
  "wordsSpokenCount": "Int64"
}
```
