---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc teams channels create --team-id {team-id} --body '{\
  "@odata.type": "#Microsoft.Graph.channel",\
  "membershipType": "private",\
  "displayName": "My First Private Channel",\
  "description": "This is my first private channels",\
  "members":\
     [\
        {\
           "@odata.type":"#microsoft.graph.aadUserConversationMember",\
           "user@odata.bind":"https://graph.microsoft.com/v1.0/users('62855810-484b-4823-9e01-60667f8b12ae')",\
           "roles":["owner"]\
        }\
     ]\
}\
'

```