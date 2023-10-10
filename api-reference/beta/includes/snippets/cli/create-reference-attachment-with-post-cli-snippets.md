---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta groups threads reply post --group-id {group-id} --conversation-thread-id {conversationThread-id} --body '{\
  "post": {\
    "body": {\
      "contentType": "text",\
      "content": "I attached a reference to a file on OneDrive."\
    },\
    "attachments": [{\
      "@odata.type": "#microsoft.graph.referenceAttachment", \
      "name": "Personal pictures", \
      "sourceUrl": "https://contoso.com/personal/mario_contoso_net/Documents/Pics", \
      "providerType": "oneDriveConsumer", \
      "permission": "Edit", \
      "isFolder": "True"\
    } ]\
  }\
}\
'

```