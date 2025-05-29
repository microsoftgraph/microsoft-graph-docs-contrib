---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc-beta education classes assignments resources create --education-class-id {educationClass-id} --education-assignment-id {educationAssignment-id} --body '{\
  "distributeForStudentWork": true,\
  "resource": {\
    "@odata.type": "microsoft.graph.educationSpeakerProgressResource",\
    "displayName": "speakerProgressTestResource",\
    "recordingTimeLimitInMinutes": 5,\
    "showRehearsalReportToStudentBeforeMediaUpload": true,\
    "maxRecordingAttempts": 1,\
    "isVideoRequired": true,\
    "isAiFeedbackEnabled": true,\
    "presentationTitle": "speakerProgressTestResource",\
    "spokenLanguageLocale": "en-US",\
    "speakerCoachSettings": {\
      "deliverySettings": {\
        "isPronunciationEnabled": true\
      }\
    },\
    "aiFeedbackCriteria": {\
      "speechType": "informative",\
      "aiFeedbackSettings": {\
        "deliverySettings": {\
          "isStyleEnabled": true\
        }\
      }\
    }\
  }\
}\
'

```