---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta teams schedule time-cards create --team-id {team-id} --body '{\
  "onBehalfOfUserId":"a3601044-a1b5-438e-b742-f78d01d68a67",\
  "clockInEvent":{\
     "dateTime":"2019-03-18T00:00:00.000Z",\
     "atApprovedLocation":true,\
     "notes": {\
        "content": "Started late due to traffic in CA 237",\
        "contentType": "text"\
     },\
  },\
  "notes":{\
        "content": "8 To 5 Inventory management",\
        "contentType": "text"\
   },\
  "breaks":[\
     {\
       "breakId": "string",\
        "notes":{\
             "content": "Lunch break",\
             "contentType": "text"\
        },\
        "start":{\
           "dateTime":"2019-03-18T02:00:00.000Z",\
           "atApprovedLocation":true,\
           "notes": {\
                "content": "Reduced break to make up for lost time",\
                "contentType": "text"\
             },\
        }\
     }\
  ]\
}\
'

```