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
      "user@odata.bind": "https://graph.microsoft.com/v1.0/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')"\
    },\
    {\
      "@odata.type": "#microsoft.graph.aadUserConversationMember",\
      "roles": ["owner"],\
      "user@odata.bind": "https://graph.microsoft.com/v1.0/users('82af01c5-f7cc-4a2e-a728-3a5df21afd9d')"\
    }\
  ],\
  "installedApps": [\
    {\
      "teamsApp@odata.bind":"https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/05F59CEC-A742-4A50-A62E-202A57E478A4"\
    }\
  ]\
}\
'

```