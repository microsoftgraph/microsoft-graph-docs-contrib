---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc users events create --user-id {user-id} --body '{\
  "subject": "Family reunion",\
  "body": {\
    "contentType": "HTML",\
    "content": "Let's get together this Thanksgiving!"\
  },\
  "start": {\
      "dateTime": "2015-11-26T09:00:00",\
      "timeZone": "Pacific Standard Time"\
  },\
  "end": {\
      "dateTime": "2015-11-29T21:00:00",\
      "timeZone": "Pacific Standard Time"\
  },\
  "attendees": [\
    {\
      "emailAddress": {\
        "address": "Terrie@contoso.com",\
        "name": "Terrie Barrera"\
      },\
      "type": "Required"\
    },\
    {\
      "emailAddress": {\
        "address": "Lauren@contoso.com",\
        "name": "Lauren Solis"\
      },\
      "type": "Required"\
    }\
  ],\
  "multiValueExtendedProperties": [\
     {\
           "id":"StringArray {66f5a359-4659-4830-9070-00050ec6ac6e} Name Recreation",\
           "value": ["Food", "Hiking", "Swimming"]\
     }\
  ]\
}\
'

```