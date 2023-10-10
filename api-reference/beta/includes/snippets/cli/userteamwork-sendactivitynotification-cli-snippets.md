---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta users teamwork send-activity-notification post --user-id {user-id} --body '{\
    "topic": {\
        "source": "entityUrl",\
        "value": "https://graph.microsoft.com/beta/users/{userId}/teamwork/installedApps/{installationId}"\
    },\
    "activityType": "taskCreated",\
    "previewText": {\
        "content": "New Task Created"\
    },\
    "templateParameters": [\
        {\
            "name": "taskId",\
            "value": "Task 12322"\
        }\
    ]\
}\
'

```