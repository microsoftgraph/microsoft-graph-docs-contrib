---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta users events create --user-id {user-id} --body '{\
  "subject": "Let's go for lunch",\
  "body": {\
    "contentType": "HTML",\
    "content": "Does noon work for you?"\
  },\
  "start": {\
      "dateTime": "2020-02-25T12:00:00",\
      "timeZone": "Pacific Standard Time"\
  },\
  "end": {\
      "dateTime": "2020-02-25T14:00:00",\
      "timeZone": "Pacific Standard Time"\
  },\
  "location":{\
      "displayName":"Harry's Bar"\
  },\
  "attendees": [\
    {\
      "emailAddress": {\
        "address":"AlexW@contoso.OnMicrosoft.com",\
        "name": "Alex Wilbur"\
      },\
      "type": "required"\
    }\
  ],\
  "recurrence": {\
    "pattern": {\
      "type": "daily",\
      "interval": 1\
    },\
    "range": {\
      "type": "numbered",\
      "startDate": "2020-02-25",\
      "numberOfOccurrences": 2\
    }\
  }\
}\
'

```