---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta users mailbox-settings patch --user-id {user-id} --body '{\
  "workingHours": {\
      "endTime" : "18:30:00.0000000", \
      "daysOfWeek": [ \
          "Monday", \
          "Tuesday", \
          "Wednesday", \
          "Thursday", \
          "Friday", \
          "Saturday" \
      ], \
      "timeZone" : { \
         "@odata.type": "#microsoft.graph.customTimeZone", \
         "bias":-300, \
         "name": "Customized Time Zone",\
         "standardOffset":{   \
           "time":"02:00:00.0000000", \
           "dayOccurrence":2, \
           "dayOfWeek":"Sunday", \
           "month":10, \
           "year":0 \
         }, \
         "daylightOffset":{   \
           "daylightBias":100, \
           "time":"02:00:00.0000000", \
           "dayOccurrence":4, \
           "dayOfWeek":"Sunday", \
           "month":5, \
           "year":0 \
         } \
      } \
  }\
} \
'

```