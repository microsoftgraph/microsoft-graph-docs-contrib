---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta groups threads posts reply post --group-id {group-id} --conversation-thread-id {conversationThread-id} --post-id {post-id} --body '{\
  "post": {\
    "body": {\
      "contentType": "",\
      "content": "content-value"\
    },\
    "receivedDateTime": "2016-10-19T10:37:00Z",\
    "hasAttachments": true,\
    "from": {\
      "emailAddress": {\
        "name": "name-value",\
        "address": "address-value"\
      }\
    },\
    "sender": {\
      "emailAddress": {\
        "name": "name-value",\
        "address": "address-value"\
      }\
    },\
    "conversationThreadId": "conversationThreadId-value",\
    "newParticipants": [\
      {\
        "emailAddress": {\
          "name": "name-value",\
          "address": "address-value"\
        }\
      }\
    ],\
    "conversationId": "conversationId-value",\
    "createdDateTime": "2016-10-19T10:37:00Z",\
    "lastModifiedDateTime": "2016-10-19T10:37:00Z",\
    "changeKey": "changeKey-value",\
    "categories": [\
      "categories-value"\
    ],\
    "id": "id-value",\
    "inReplyTo": {\
    },\
    "attachments": [\
      {\
        "@odata.type": "#microsoft.graph.fileAttachment",\
        "lastModifiedDateTime": "2016-10-19T10:37:00Z",\
        "name": "name-value",\
        "contentType": "contentType-value",\
        "size": 99,\
        "isInline": true,\
        "id": "id-value"\
      }\
    ]\
  }\
}\
'

```