---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash


mgc chats create --body '{\
  "chatType": "oneOnOne",\
  "members": [\
    {\
      "@odata.type": "#microsoft.graph.aadUserConversationMember",\
      "roles": ["owner"],\
      "user@odata.bind": "https://graph.microsoft.com/v1.0/users('4b822dfc-2864-44e6-aa1e-7e0e8552168f')"\
    },\
    {\
      "@odata.type": "#microsoft.graph.aadUserConversationMember",\
      "roles": ["owner"],\
      "user@odata.bind": "https://graph.microsoft.com/v1.0/users('6d1e1501-7a3d-45b7-b71b-68d372e5ce14')"\
    }\
  ],\
  "installedApps": [\
    {\
      "teamsApp@odata.bind": "https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/8e55a7b1-6766-4f0a-8610-ecacfe3d569a",\
      "consentedPermissionSet": {\
        "resourceSpecificPermissions": [\
          {\
            "permissionValue": "ChatMessage.Read.Chat",\
            "permissionType": "application"\
          },\
          {\
            "permissionValue": "OnlineMeeting.ReadBasic.Chat",\
            "permissionType": "application"\
          }\
        ]\
      }\
    }\
  ]\
}\
'

```