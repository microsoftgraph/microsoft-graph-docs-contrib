---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc users events create --user-id {user-id} --body '{\
  "subject": "Prep for customer meeting",\
  "body": {\
    "contentType": "HTML",\
    "content": "Does this time work for you?"\
  },\
  "start": {\
      "dateTime": "2019-11-20T13:00:00",\
      "timeZone": "Pacific Standard Time"\
  },\
  "end": {\
      "dateTime": "2019-11-20T14:00:00",\
      "timeZone": "Pacific Standard Time"\
  },\
  "location":{\
      "displayName":"Cordova conference room"\
  },\
  "attendees": [\
    {\
      "emailAddress": {\
        "address":"AdeleV@contoso.OnMicrosoft.com",\
        "name": "Adele Vance"\
      },\
      "type": "required"\
    }\
  ],\
  "allowNewTimeProposals": true,\
  "isOnlineMeeting": true,\
  "onlineMeetingProvider": "teamsForBusiness"\
}\
'

```