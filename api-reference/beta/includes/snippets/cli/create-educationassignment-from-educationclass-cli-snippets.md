---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta education classes assignments create --education-class-id {educationClass-id} --body '{\
    "dueDateTime": "2022-09-16T00:00:00Z",\
    "displayName": "Reading test 09.14 Beta",\
    "instructions": {\
        "contentType": "text",\
        "content": "Read chapter 4"\
    },\
    "grading": {\
        "@odata.type": "#microsoft.graph.educationAssignmentPointsGradeType",\
        "maxPoints": 50\
    },\
    "assignTo": {\
        "@odata.type": "#microsoft.graph.educationAssignmentClassRecipient"\
    },\
    "status": "draft",\
    "allowStudentsToAddResourcesToSubmission": true\
}\
'

```