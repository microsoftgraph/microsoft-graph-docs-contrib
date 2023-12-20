---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta users outlook tasks attachments create --user-id {user-id} --outlook-task-id {outlookTask-id} --body '{\
  "@odata.type": "#microsoft.graph.itemAttachment",\
  "name": "Holiday event",\
  "item": {\
        "@odata.type": "microsoft.graph.event",\
        "subject": "Discuss gifts for children",\
        "body": {\
            "contentType": "HTML",\
            "content": "Let's look for funding!"\
         },\
         "start": {\
             "dateTime": "2020-01-12T18:00:00",\
             "timeZone": "Pacific Standard Time"\
          },\
          "end": {\
             "dateTime": "2020-01-12T19:00:00",\
             "timeZone": "Pacific Standard Time"\
          }\
    }\
}\
'

```