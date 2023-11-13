---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc groups threads reply post --group-id {group-id} --conversation-thread-id {conversationThread-id} --body '{\
  "post": {\
    "body": {\
      "contentType": "text",\
      "content": "Which quarter does that file cover? See my attachment."\
    },\
    "attachments": [{\
      "@odata.type": "#microsoft.graph.fileAttachment",\
      "name": "Another file as attachment",\
      "contentBytes": "VGhpcyBpcyBhIGZpbGUgdG8gYmUgYXR0YWNoZWQu"\
    } ]\
  }\
}\
'

```