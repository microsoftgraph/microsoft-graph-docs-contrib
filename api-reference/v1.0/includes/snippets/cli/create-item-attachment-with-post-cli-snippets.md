---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc groups threads reply post --group-id {group-id} --conversation-thread-id {conversationThread-id} --body '{\
  "post": {\
    "body": {\
      "contentType": "text",\
      "content": "I attached an event."\
    },\
    "attachments": [{\
      "@odata.type": "#microsoft.graph.itemAttachment",\
      "name": "Holiday event", \
      "item": {\
          "@odata.type": "microsoft.graph.event",\
          "subject": "Discuss gifts for children",\
          "body": {\
              "contentType": "HTML",\
              "content": "Let's look for funding!"\
          },\
          "start": {\
              "dateTime": "2019-12-02T18:00:00",\
              "timeZone": "Pacific Standard Time"\
          },\
          "end": {\
              "dateTime": "2019-12-02T19:00:00",\
              "timeZone": "Pacific Standard Time"\
          }\
      }\
    } ]\
  }\
}\
'

```