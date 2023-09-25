---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

// THE CLI IS IN PREVIEW. NON-PRODUCTION USE ONLY
mgc-beta teams installed-apps create --team-id {team-id} --body '{\
	"teamsApp@odata.bind" : "https://graph.microsoft.com/beta/appCatalogs/teamsApps/7023576d-9e40-47ca-9cf2-daae6838e785",\
    "consentedPermissionSet": {\
        "resourceSpecificPermissions": [\
        {\
          "permissionValue": "OnlineMeeting.ReadBasic.Chat",\
          "permissionType": "delegated"\
        },\
        {\
          "permissionValue": "ChatMessage.Read.Chat",\
          "permissionType": "application"\
        }]\
      }\
}\
'

```