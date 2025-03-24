---
title: "educationSpeakerProgressResource resource type"
description: "Speaker Progress helps students develop confidence in their presentation skills and reduces their anxiety when speaking publically."
author: "v-rmanda"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: resourcePageType
---

# educationSpeakerProgressResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Speaker Progress helps students develop confidence in their presentation skills and reduces anxiety by providing AI-powered real-time coaching and feedback on their public speaking skills like their pace, pitch, filler words, and more.

> [!IMPORTANT] 
> Getting the latest information for an educationSpeakerProgressResource requires us to call an additional service. If that service is unavailable or no longer has a record for the requested educationSpeakerProgressResource, we will instead return an object of @odata.type #microsoft.graph.educationExternalResource on read requests. 

Inherits from [educationResource](../resources/educationresource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|aiFeedbackCriteria|[educationAiFeedbackCriteria](../resources/educationaifeedbackcriteria.md)|The feedback types that students should receive from AI feedback. This property should only be provided if isAiFeedbackEnabled is true. |
|createdBy|[identitySet](identityset.md)|The individual who created the resource.|
|createdDateTime|DateTimeOffset|Moment in time when the resource was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.|
|displayName|String|Display name of resource.|
|isAiFeedbackEnabled|Boolean|Indicates whether AI feedback is enabled for the student submissions.|
|isVideoRequired|Boolean|Indicates whether video is required for the student recording.|
|lastModifiedBy|[identitySet](identityset.md)|The last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|Moment in time when the resource was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.|
|maxRecordingAttempts|Int32|The maximum number of recordings attempts the student has. Specify 0 to set unlimited recording attempts.|
|presentationTitle|String|The title of the speaker progress resource that students see.|
|recordingTimeLimitInMinutes|Int32|The time limit is in minutes for the student recording.|
|showRehearsalReportToStudentBeforeMediaUpload|Boolean|Allow students to view their rehearsal report before the assignment is graded.|
|speakerCoachSettings|[educationSpeakerCoachSettings](../resources/educationspeakercoachsettings.md)|The feedback types that students should receive from the Speaker Coach.|
|spokenLanguageLocale|String|The spoken language for the student recording. For example, en-US. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.educationSpeakerProgressResource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.educationSpeakerProgressResource",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "recordingTimeLimitInMinutes": "Integer",
  "showRehearsalReportToStudentBeforeMediaUpload": "Boolean",
  "maxRecordingAttempts": "Integer",
  "isVideoRequired": "Boolean",
  "isAiFeedbackEnabled": "Boolean",
  "presentationTitle": "String",
  "spokenLanguageLocale": "String",
  "speakerCoachSettings": {
    "@odata.type": "microsoft.graph.educationSpeakerCoachSettings"
  },
  "aiFeedbackCriteria": {
    "@odata.type": "microsoft.graph.educationAiFeedbackCriteria"
  }
}
```

