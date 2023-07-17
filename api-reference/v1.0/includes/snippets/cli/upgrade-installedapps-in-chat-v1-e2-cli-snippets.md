---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc chats installed-apps upgrade post --chat-id {chat-id} --teams-app-installation-id {teamsAppInstallation-id} --body '{\
  "consentedPermissionSet": {\
      "resourceSpecificPermissions": [\
      {\
        "permissionValue": "OnlineMeeting.ReadBasic.Chat",\
        "permissionType": "Delegated"\
      },\
      {\
        "permissionValue": "ChatMember.Read.Chat",\
        "permissionType": "Application"\
      }]\
    }\
}\
'

```