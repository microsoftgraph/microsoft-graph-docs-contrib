---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc users events decline post --user-id {user-id} --event-id {event-id} --body '{\
  "comment": "I won't be able to make this week. How about next week?",\
  "sendResponse": true,\
  "proposedNewTime": {\
      "start": { \
          "dateTime": "2019-12-02T18:00:00", \
          "timeZone": "Pacific Standard Time" \
      }, \
      "end": { \
          "dateTime": "2019-12-02T19:00:00", \
          "timeZone": "Pacific Standard Time" \
      }     \
  }\
}\
'

```