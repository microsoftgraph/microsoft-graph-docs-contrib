---
title: "speakerProgressResource type"
description: "Speaker Progress helps students develop confidence in their presentation skills and reduces anxiety."
author: "v-rmanda"
ms.localizationpriority: medium
ms.subservice: "education"
doc_type: apiPageType
ms.date: 03/20/2025
---

# speakerProgressResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Speaker Progress helps students develop confidence in their presentation skills and reduces anxiety by providing AI-powered real-time coaching and feedback on their public speaking skills like their pace, pitch, filler words, and more. 
Speaker Progress can also save educators time and create more opportunities for independent practice for in class presentations.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "educationassignment_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/educationassignment-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /education/classes/{educationClassId}/assignments/{assignmentId}/resources/
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|aiFeedbackCriteria|[educationAiFeedbackCriteria](../resources/educationaifeedbackcriteria.md)|The feedback types that students should receive from AI feedback. This property should only be provided if isAiFeedbackEnabled is true. |
|createdBy|[identitySet](../resources/intune-identityset.md)|The individual who created the resource.|
|createdDateTime|DateTimeOffset|Moment in time when the resource was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.|
|displayName|String|Display name of resource.|
|isAiFeedbackEnabled|Boolean|Whether AI feedback is enabled for the student submissions.|
|isVideoRequired|Boolean|Whether video is required for the student recording.|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|The last user to modify the resource.|
|lastModifiedDateTime|DateTimeOffset|Moment in time when the resource was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is 2014-01-01T00:00:00Z.|
|maxRecordingAttempts|Int32|The maximum number of recordings attempts the student has.|
|presentationTitle|String|The title of the speaker progress resource that students will see.|
|recordingTimeLimitInMinutes|Int32|The time limit is in minutes for the student recording.|
|showRehearsalReportToStudentBeforeMediaUpload|Boolean|Allow students to view their rehearsal report prior to the assignment being graded.|
|speakerCoachSettings|[educationSpeakerCoachSettings](../resources/educationspeakercoachsettings.md)|The feedback types that students should receive from the Speaker Coach.|
|spokenLanguageLocale|String|The spoken language for the student recording. For example, en-US. |

## Response

If successful, this method returns a `201 Created` response code.

## Examples

## Example 1: Create and attach a speaker progress resource to an existing assignment
### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "create_educationSpeakerProgressResource"
}
-->
``` http
POST https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19/resources

Content-Type: application/json

{
    "distributeForStudentWork": true,
    "resource": {
        "@odata.type": "microsoft.graph.educationSpeakerProgressResource",
        "displayName": "speakerProgressTestResource",
        "recordingTimeLimitInMinutes": 5,
        "showRehearsalReportToStudentBeforeMediaUpload": true,
        "maxRecordingAttempts": 1,
        "isVideoRequired": true,
        "isAiFeedbackEnabled": true,
        "presentationTitle": "speakerProgressTestResource",
        "spokenLanguageLocale": "en-US",
        "speakerCoachSettings": {
            "deliverySettings": {
                "isPronunciationEnabled": true
            }
        },
        "aiFeedbackCriteria": {
            "speechType": "informative",
            "aiFeedbackSettings": {
                "deliverySettings": {
                    "isStyleEnabled": true
                }
            }
        }
    }
}
```
---

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSpeakerProgressResource"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19')/resources/$entity",
    "distributeForStudentWork": true,
    "id": "af98a1e1-3393-4ee0-8bcc-8b5bb4598d1c",
    "resource": {
        "@odata.type": "#microsoft.graph.educationSpeakerProgressResource",
        "displayName": "speakerProgressTestResource",
        "createdDateTime": "2025-03-17T16:26:03.5530234Z",
        "lastModifiedDateTime": "2025-03-17T16:26:03.5530384Z",
        "recordingTimeLimitInMinutes": 5,
        "showRehearsalReportToStudentBeforeMediaUpload": true,
        "maxRecordingAttempts": 1,
        "isVideoRequired": true,
        "isAiFeedbackEnabled": true,
        "presentationTitle": "speakerProgressTestResource",
        "spokenLanguageLocale": "en-US",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                "displayName": null
            }
        },
        "speakerCoachSettings": {
            "deliverySettings": {
                "isPaceEnabled": false,
                "areFillerWordsEnabled": false,
                "isPitchEnabled": false,
                "isPronunciationEnabled": true
            },
            "contentSettings": {
                "isInclusivenessEnabled": false,
                "isRepetitiveLanguageEnabled": false
            },
            "audienceEngagementSettings": {
                "isBodyLanguageEnabled": false
            }
        },
        "aiFeedbackCriteria": {
            "speechType": "informative",
            "aiFeedbackSettings": {
                "deliverySettings": {
                    "isLanguageUseEnabled": false,
                    "areRhetoricalTechniquesEnabled": false,
                    "isStyleEnabled": true
                },
                "contentSettings": {
                    "isSpeechOrganizationEnabled": false,
                    "isMessageClarityEnabled": false,
                    "isQualityOfInformationEnabled": false
                },
                "audienceEngagementSettings": {
                    "areEngagementStrategiesEnabled": false,
                    "isEmotionalAndIntellectualAppealEnabled": false,
                    "isCallToActionEnabled": false
                }
            }
        }
    }
}
```

## Example 2: Get a specific resource for an existing assignment
### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "specific_educationSpeakerProgressResource"
}
-->
``` http
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19/resources/af98a1e1-3393-4ee0-8bcc-8b5bb4598d1c
```
---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSpeakerProgressResource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19')/resources/$entity",
    "distributeForStudentWork": true,
    "id": "af98a1e1-3393-4ee0-8bcc-8b5bb4598d1c",
    "resource": {
        "@odata.type": "#microsoft.graph.educationSpeakerProgressResource",
        "displayName": "speakerProgressTestResource",
        "createdDateTime": "2025-03-17T16:26:03.5530234Z",
        "lastModifiedDateTime": "2025-03-17T16:26:03.5530384Z",
        "recordingTimeLimitInMinutes": 5,
        "showRehearsalReportToStudentBeforeMediaUpload": true,
        "maxRecordingAttempts": 1,
        "isVideoRequired": true,
        "isAiFeedbackEnabled": true,
        "presentationTitle": "speakerProgressTestResource",
        "spokenLanguageLocale": "en-US",
        "createdBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                "displayName": null
            }
        },
        "lastModifiedBy": {
            "application": null,
            "device": null,
            "user": {
                "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                "displayName": null
            }
        },
        "speakerCoachSettings": {
            "deliverySettings": {
                "isPaceEnabled": false,
                "areFillerWordsEnabled": false,
                "isPitchEnabled": false,
                "isPronunciationEnabled": true
            },
            "contentSettings": {
                "isInclusivenessEnabled": false,
                "isRepetitiveLanguageEnabled": false
            },
            "audienceEngagementSettings": {
                "isBodyLanguageEnabled": false
            }
        },
        "aiFeedbackCriteria": {
            "speechType": "informative",
            "aiFeedbackSettings": {
                "deliverySettings": {
                    "isLanguageUseEnabled": false,
                    "areRhetoricalTechniquesEnabled": false,
                    "isStyleEnabled": true
                },
                "contentSettings": {
                    "isSpeechOrganizationEnabled": false,
                    "isMessageClarityEnabled": false,
                    "isQualityOfInformationEnabled": false
                },
                "audienceEngagementSettings": {
                    "areEngagementStrategiesEnabled": false,
                    "isEmotionalAndIntellectualAppealEnabled": false,
                    "isCallToActionEnabled": false
                }
            }
        }
    }
}
```

## Example 3: Get all resources for an existing assignment
### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_educationSpeakerProgressResource"
}
-->
``` http
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19/resources
```
---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSpeakerProgressResource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19')/resources",
    "value": [
        {
            "distributeForStudentWork": true,
            "id": "af98a1e1-3393-4ee0-8bcc-8b5bb4598d1c",
            "resource": {
                "@odata.type": "#microsoft.graph.educationSpeakerProgressResource",
                "displayName": "speakerProgressTestResource",
                "createdDateTime": "2025-03-17T16:26:03.5530234Z",
                "lastModifiedDateTime": "2025-03-17T16:26:03.5530384Z",
                "recordingTimeLimitInMinutes": 5,
                "showRehearsalReportToStudentBeforeMediaUpload": true,
                "maxRecordingAttempts": 1,
                "isVideoRequired": true,
                "isAiFeedbackEnabled": true,
                "presentationTitle": "speakerProgressTestResource",
                "spokenLanguageLocale": "en-US",
                "createdBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                        "displayName": null
                    }
                },
                "lastModifiedBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                        "displayName": null
                    }
                },
                "speakerCoachSettings": {
                    "deliverySettings": {
                        "isPaceEnabled": false,
                        "areFillerWordsEnabled": false,
                        "isPitchEnabled": false,
                        "isPronunciationEnabled": true
                    },
                    "contentSettings": {
                        "isInclusivenessEnabled": false,
                        "isRepetitiveLanguageEnabled": false
                    },
                    "audienceEngagementSettings": {
                        "isBodyLanguageEnabled": false
                    }
                },
                "aiFeedbackCriteria": {
                    "speechType": "informative",
                    "aiFeedbackSettings": {
                        "deliverySettings": {
                            "isLanguageUseEnabled": false,
                            "areRhetoricalTechniquesEnabled": false,
                            "isStyleEnabled": true
                        },
                        "contentSettings": {
                            "isSpeechOrganizationEnabled": false,
                            "isMessageClarityEnabled": false,
                            "isQualityOfInformationEnabled": false
                        },
                        "audienceEngagementSettings": {
                            "areEngagementStrategiesEnabled": false,
                            "isEmotionalAndIntellectualAppealEnabled": false,
                            "isCallToActionEnabled": false
                        }
                    }
                }
            }
        },
        {
            "distributeForStudentWork": true,
            "id": "e99e90ff-5a53-43f6-9cb4-222ae678e8aa",
            "resource": {
                "@odata.type": "#microsoft.graph.educationSpeakerProgressResource",
                "displayName": "speakerProgressTestResource",
                "createdDateTime": "2025-03-19T15:11:27.6198914Z",
                "lastModifiedDateTime": "2025-03-19T15:11:27.6199015Z",
                "recordingTimeLimitInMinutes": 5,
                "showRehearsalReportToStudentBeforeMediaUpload": true,
                "maxRecordingAttempts": 2,
                "isVideoRequired": true,
                "isAiFeedbackEnabled": true,
                "presentationTitle": "speakerProgressTestResource",
                "spokenLanguageLocale": "en-US",
                "createdBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                        "displayName": null
                    }
                },
                "lastModifiedBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                        "displayName": null
                    }
                },
                "speakerCoachSettings": {
                    "deliverySettings": {
                        "isPaceEnabled": false,
                        "areFillerWordsEnabled": false,
                        "isPitchEnabled": false,
                        "isPronunciationEnabled": true
                    },
                    "contentSettings": {
                        "isInclusivenessEnabled": false,
                        "isRepetitiveLanguageEnabled": false
                    },
                    "audienceEngagementSettings": {
                        "isBodyLanguageEnabled": false
                    }
                },
                "aiFeedbackCriteria": {
                    "speechType": "informative",
                    "aiFeedbackSettings": {
                        "deliverySettings": {
                            "isLanguageUseEnabled": false,
                            "areRhetoricalTechniquesEnabled": false,
                            "isStyleEnabled": true
                        },
                        "contentSettings": {
                            "isSpeechOrganizationEnabled": false,
                            "isMessageClarityEnabled": false,
                            "isQualityOfInformationEnabled": false
                        },
                        "audienceEngagementSettings": {
                            "areEngagementStrategiesEnabled": false,
                            "isEmotionalAndIntellectualAppealEnabled": false,
                            "isCallToActionEnabled": false
                        }
                    }
                }
            }
        }
    ]
}
```

## Example 4: Get an assignment with expand on resources
### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "expand_educationSpeakerProgressResource"
}
-->
``` http
GET https://graph.microsoft.com/beta/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/assignments/fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19?$expand=resources
```
---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.educationSpeakerProgressResource"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://canary.graph.microsoft.com/testprodbetaeduasg_edog_pateljay/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments(resources())/$entity",
    "@microsoft.graph.tips": "Use $select to choose only the properties your app needs, as this can lead to performance improvements. For example: GET education/classes('<guid>')/assignments('<guid>')?$select=addedStudentAction,addToCalendarAction",
    "classId": "37d99af7-cfc5-4e3b-8566-f7d40e4a2070",
    "displayName": "2024-11-26T20_05_00_257Z",
    "closeDateTime": null,
    "dueDateTime": "2024-11-26T20:05:00.257Z",
    "assignDateTime": null,
    "assignedDateTime": "2024-11-25T20:09:18.2797228Z",
    "allowLateSubmissions": true,
    "resourcesFolderUrl": null,
    "feedbackResourcesFolderUrl": null,
    "createdDateTime": "2024-11-25T20:05:00.6355351Z",
    "lastModifiedDateTime": "2025-03-19T15:11:27.687136Z",
    "allowStudentsToAddResourcesToSubmission": true,
    "status": "assigned",
    "notificationChannelUrl": null,
    "webUrl": "https://teams.microsoft.com/l/entity/66aeee93-507d-479a-a3ef-8f494af43945/classroom?context=%7B%22subEntityId%22%3A%22%7B%5C%22version%5C%22%3A%5C%221.0%5C%22,%5C%22config%5C%22%3A%7B%5C%22classes%5C%22%3A%5B%7B%5C%22id%5C%22%3A%5C%2237d99af7-cfc5-4e3b-8566-f7d40e4a2070%5C%22,%5C%22assignmentIds%5C%22%3A%5B%5C%22fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19%5C%22%5D%7D%5D%7D,%5C%22action%5C%22%3A%5C%22navigate%5C%22,%5C%22view%5C%22%3A%5C%22assignment-viewer%5C%22,%5C%22appId%5C%22%3A%5C%22de8bc8b5-d9f9-48b1-a8ad-b748da725064%5C%22%7D%22,%22channelId%22%3Anull%7D",
    "addToCalendarAction": "none",
    "addedStudentAction": "none",
    "moduleUrl": null,
    "id": "fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19",
    "instructions": {
        "content": "2024-11-26T20_05_00_257Z",
        "contentType": "text"
    },
    "grading": {
        "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",
        "maxPoints": 100
    },
    "assignTo": {
        "@odata.type": "#microsoft.graph.educationAssignmentClassRecipient"
    },
    "createdBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "a8881458-7588-4bca-941e-5b7d03fcc4ac",
            "displayName": null
        }
    },
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "user": {
            "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
            "displayName": null
        }
    },
    "resources@odata.context": "https://graph.microsoft.com/beta/$metadata#education/classes('37d99af7-cfc5-4e3b-8566-f7d40e4a2070')/assignments('fe9c8d6f-baad-4b5e-b9d5-e2bb33e4ed19')/resources",
    "resources": [
        {
            "distributeForStudentWork": true,
            "id": "af98a1e1-3393-4ee0-8bcc-8b5bb4598d1c",
            "resource": {
                "@odata.type": "#microsoft.graph.educationSpeakerProgressResource",
                "displayName": "speakerProgressTestResource",
                "createdDateTime": "2025-03-17T16:26:03.5530234Z",
                "lastModifiedDateTime": "2025-03-17T16:26:03.5530384Z",
                "recordingTimeLimitInMinutes": 5,
                "showRehearsalReportToStudentBeforeMediaUpload": true,
                "maxRecordingAttempts": 1,
                "isVideoRequired": true,
                "isAiFeedbackEnabled": true,
                "presentationTitle": "speakerProgressTestResource",
                "spokenLanguageLocale": "en-US",
                "createdBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                        "displayName": null
                    }
                },
                "lastModifiedBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                        "displayName": null
                    }
                },
                "speakerCoachSettings": {
                    "deliverySettings": {
                        "isPaceEnabled": false,
                        "areFillerWordsEnabled": false,
                        "isPitchEnabled": false,
                        "isPronunciationEnabled": true
                    },
                    "contentSettings": {
                        "isInclusivenessEnabled": false,
                        "isRepetitiveLanguageEnabled": false
                    },
                    "audienceEngagementSettings": {
                        "isBodyLanguageEnabled": false
                    }
                },
                "aiFeedbackCriteria": {
                    "speechType": "informative",
                    "aiFeedbackSettings": {
                        "deliverySettings": {
                            "isLanguageUseEnabled": false,
                            "areRhetoricalTechniquesEnabled": false,
                            "isStyleEnabled": true
                        },
                        "contentSettings": {
                            "isSpeechOrganizationEnabled": false,
                            "isMessageClarityEnabled": false,
                            "isQualityOfInformationEnabled": false
                        },
                        "audienceEngagementSettings": {
                            "areEngagementStrategiesEnabled": false,
                            "isEmotionalAndIntellectualAppealEnabled": false,
                            "isCallToActionEnabled": false
                        }
                    }
                }
            }
        },
        {
            "distributeForStudentWork": true,
            "id": "e99e90ff-5a53-43f6-9cb4-222ae678e8aa",
            "resource": {
                "@odata.type": "#microsoft.graph.educationSpeakerProgressResource",
                "displayName": "speakerProgressTestResource",
                "createdDateTime": "2025-03-19T15:11:27.6198914Z",
                "lastModifiedDateTime": "2025-03-19T15:11:27.6199015Z",
                "recordingTimeLimitInMinutes": 5,
                "showRehearsalReportToStudentBeforeMediaUpload": true,
                "maxRecordingAttempts": 2,
                "isVideoRequired": true,
                "isAiFeedbackEnabled": true,
                "presentationTitle": "speakerProgressTestResource",
                "spokenLanguageLocale": "en-US",
                "createdBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                        "displayName": null
                    }
                },
                "lastModifiedBy": {
                    "application": null,
                    "device": null,
                    "user": {
                        "id": "fffafb29-e8bc-4de3-8106-be76ed2ad499",
                        "displayName": null
                    }
                },
                "speakerCoachSettings": {
                    "deliverySettings": {
                        "isPaceEnabled": false,
                        "areFillerWordsEnabled": false,
                        "isPitchEnabled": false,
                        "isPronunciationEnabled": true
                    },
                    "contentSettings": {
                        "isInclusivenessEnabled": false,
                        "isRepetitiveLanguageEnabled": false
                    },
                    "audienceEngagementSettings": {
                        "isBodyLanguageEnabled": false
                    }
                },
                "aiFeedbackCriteria": {
                    "speechType": "informative",
                    "aiFeedbackSettings": {
                        "deliverySettings": {
                            "isLanguageUseEnabled": false,
                            "areRhetoricalTechniquesEnabled": false,
                            "isStyleEnabled": true
                        },
                        "contentSettings": {
                            "isSpeechOrganizationEnabled": false,
                            "isMessageClarityEnabled": false,
                            "isQualityOfInformationEnabled": false
                        },
                        "audienceEngagementSettings": {
                            "areEngagementStrategiesEnabled": false,
                            "isEmotionalAndIntellectualAppealEnabled": false,
                            "isCallToActionEnabled": false
                        }
                    }
                }
            }
        }
    ]
}
```

## Error responses for invalid request body
If Distributable resource attach limit exceeded, the method returns a `400` error message.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "20243",
        "message": "Invalid request body. Distributable resource attach limit exceeded.",
        "innerError": {
            "date": "2025-02-20T20:25:00",
            "request-id": "4a342b8c-0623-4f08-9f37-0475d6ed8671",
            "client-request-id": "b1b08430-f576-3fb1-4b5e-e66aab04caf3"
        }
    }
}
```
If No speaker coach setting nor AI feedback is enabled, the method returns a `400` error message.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "20243",
        "message": "Invalid request body. Validation for Resource failed with the following error(s): At least one speaker coach setting or AI feedback must be enabled.\r\n",
        "innerError": {
            "date": "2025-02-20T23:37:33",
            "request-id": "33b69fe3-1585-40b3-a678-3d33913076f2",
            "client-request-id": "b61193a6-3529-742a-e0b9-58df80b2517a"
        }
    }
}
```
If AI feedback is enabled but AI feedback criteria is null, the method returns a `400` error message.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "20243",
        "message": "Invalid request body. Validation for Resource failed with the following error(s): AI feedback is enabled, but AiFeedbackCriteria is null. Please enable at least one setting under AiFeedbackCriteria or disable AI feedback.\r\n",
        "innerError": {
            "date": "2025-02-21T19:27:21",
            "request-id": "bfa48945-53b1-4c76-a3cb-d2a230d79084",
            "client-request-id": "0b0fbb64-fd6a-bdf9-65d7-39d6c92f8d08"
        }
    }
}
```
If AI feedback is enabled but AI feedback criteria has no settings enabled, the method returns a `400` error message.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "20243",
        "message": "Invalid request body. Validation for Resource failed with the following error(s): AI feedback is enabled, but AiFeedbackCriteria has no settings enabled. Please enable at least one setting under AiFeedbackCriteria or disable AI feedback.\r\n",
        "innerError": {
            "date": "2025-02-21T19:28:59",
            "request-id": "c7757adf-a523-481f-8ec2-25bba66cf000",
            "client-request-id": "53afd7bb-df86-bc1c-4a32-f4591e028db1"
        }
    }
}
```
If AI feedback is enabled but AiFeedbackCriteria.SpeechType has an invalid value, the method returns a `400` error message.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "20243",
        "message": "Invalid request body. Validation for Resource failed with the following error(s): AI feedback is enabled, but AiFeedbackCriteria.SpeechType was not set to a valid value. Please set SpeechType to one of the following: Informative, Personal, Persuasive, or disable AI feedback.\r\n",
        "innerError": {
            "date": "2025-02-21T19:26:11",
            "request-id": "f14ef915-322d-40ef-8f44-d0ac4dbd5a0e",
            "client-request-id": "117439e5-c7e9-e990-cfb0-7c7c09013317"
        }
    }
}
```
If AI feedback criteria has settings enabled but AI feedback is not enabled, the method returns a `400` error message.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "20243",
        "message": "Invalid request body. Validation for Resource failed with the following error(s): AI feedback is disabled, but AiFeedbackCriteria has settings enabled. Please enable AI feedback or do not enable any settings under AiFeedbackCriteria.\r\n",
        "innerError": {
            "date": "2025-02-21T19:31:51",
            "request-id": "cbf526d4-6cef-4480-b885-203cf6fd0a01",
            "client-request-id": "87276189-dfca-5e8a-34ed-be68b83a56d4"
        }
    }
}
```
If AiFeedbackCriteria.SpeechType is set but AI feedback is not enabled, the method returns a `400` error message.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "20243",
        "message": "AI feedback is disabled, but AiFeedbackCriteria.SpeechType has a non-null value. Please enable AI feedback or do not specify SpeechType.\r\n",
        "innerError": {
            "date": "2025-02-21T19:30:11",
            "request-id": "44f31014-9eff-4092-b93c-6e9d0c16a6f4",
            "client-request-id": "161449f2-d347-0a41-e672-08ab7546ad36"
        }
    }
}
```
If RecordingTimeLimitInMinutes is not between 1 and 10 inclusive, the method returns a `400` error message.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "20243",
        "message": "Invalid request body. Validation for Resource failed with the following error(s): The field RecordingTimeLimitInMinutes must be between 1 and 10.\r\n",
        "innerError": {
            "date": "2025-02-20T20:22:17",
            "request-id": "d8b3f113-f39f-4c53-963b-26a6f88786cc",
            "client-request-id": "76e4b40a-dc2a-c537-ed70-3e950550617a"
        }
    }
}
```
If MaxRecordingAttempts is not between 0 and 10 inclusive, the method returns a `400` error message.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "20243",
        "message": "Invalid request body. Validation for Resource failed with the following error(s): The field MaxRecordingAttempts must be between 0 and 10.\r\n",
        "innerError": {
            "date": "2025-02-20T20:22:59",
            "request-id": "b42f0fe1-0731-4840-884f-0f6d8eff680d",
            "client-request-id": "ffe4bb35-2d6e-4900-7834-efbdebe55b8d"
        }
    }
}
```
If DistributeForStudentWork is set to false, the method returns a `400` error message.

```http
HTTP/1.1 400 Bad Request
Content-type: application/json

{
    "error": {
        "code": "20243",
        "message": "Invalid request body. Learning accelerators must be marked for distribution to students",
        "innerError": {
            "date": "2025-02-20T20:23:57",
            "request-id": "a6a9bd6b-68c2-4ecb-a308-2f722512a2b5",
            "client-request-id": "cfe9094f-f4fd-92e0-1f10-9368e9822692"
        }
    }
}
```