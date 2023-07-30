---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc users teamwork send-activity-notification post --user-id {user-id} --body '{\
    "topic": {\
        "source": "entityUrl",\
        "value": "https://graph.microsoft.com/v1.0/users/{userId}/teamwork/installedApps/{installationId}"\
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