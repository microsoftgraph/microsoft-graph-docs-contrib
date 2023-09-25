---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc users find-meeting-times post --user-id {user-id} --body '{\
  "attendees": [ \
    { \
      "type": "required",  \
      "emailAddress": { \
        "name": "Alex Wilbur",\
        "address": "alexw@contoso.onmicrosoft.com" \
      } \
    }\
  ],  \
  "locationConstraint": { \
    "isRequired": false,  \
    "suggestLocation": false,  \
    "locations": [ \
      { \
        "resolveAvailability": false,\
        "displayName": "Conf room Hood" \
      } \
    ] \
  },  \
  "timeConstraint": {\
    "activityDomain":"work", \
    "timeSlots": [ \
      { \
        "start": { \
          "dateTime": "2019-04-16T09:00:00",  \
          "timeZone": "Pacific Standard Time" \
        },  \
        "end": { \
          "dateTime": "2019-04-18T17:00:00",  \
          "timeZone": "Pacific Standard Time" \
        } \
      } \
    ] \
  },  \
  "isOrganizerOptional": "false",\
  "meetingDuration": "PT1H",\
  "returnSuggestionReasons": "true",\
  "minimumAttendeePercentage": 100\
}\
'

```