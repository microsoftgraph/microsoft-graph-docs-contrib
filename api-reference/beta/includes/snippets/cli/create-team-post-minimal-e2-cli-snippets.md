---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta teams create --body '{\
   "template@odata.bind":"https://graph.microsoft.com/beta/teamsTemplates('standard')",\
   "displayName":"My Sample Team",\
   "description":"My Sample Team’s Description",\
   "members":[\
      {\
         "@odata.type":"#microsoft.graph.aadUserConversationMember",\
         "roles":[\
            "owner"\
         ],\
         "user@odata.bind":"https://graph.microsoft.com/beta/users('0040b377-61d8-43db-94f5-81374122dc7e')"\
      }\
   ]\
}\
'

```