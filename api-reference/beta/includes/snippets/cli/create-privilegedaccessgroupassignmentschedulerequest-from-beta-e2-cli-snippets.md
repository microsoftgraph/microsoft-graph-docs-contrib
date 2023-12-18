---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta identity-governance privileged-access group assignment-schedule-requests create --body '{\
  "accessId": "member", \
  "principalId": "3cce9d87-3986-4f19-8335-7ed075408ca2", \
  "groupId": "2b5ed229-4072-478d-9504-a047ebd4b07d", \
  "action": "selfActivate", \
  "scheduleInfo": { \
      "startDateTime": "2023-02-08T07:43:00.000Z", \
      "expiration": { \
          "type": "afterDuration", \
          "duration": "PT2H" \
      } \
  }, \
  "justification": "Activate assignment."\
}\
'

```