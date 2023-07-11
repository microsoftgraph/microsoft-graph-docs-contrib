---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc groups events create --group-id {group-id} --body '{\
  "subject": "Let's go for lunch",\
  "body": {\
    "contentType": "HTML",\
    "content": "Does late morning work for you?"\
  },\
  "start": {\
      "dateTime": "2019-06-16T12:00:00",\
      "timeZone": "Pacific Standard Time"\
  },\
  "end": {\
      "dateTime": "2019-06-16T14:00:00",\
      "timeZone": "Pacific Standard Time"\
  },\
  "location":{\
      "displayName":"Harry's Bar"\
  },\
  "attendees": [\
    {\
      "emailAddress": {\
        "address":"adelev@contoso.onmicrosoft.com",\
        "name": "Adele Vance"\
      },\
      "type": "required"\
    }\
  ]\
}\
'

```