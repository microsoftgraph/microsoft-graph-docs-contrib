---
description: "Automatically generated file. DO NOT MODIFY"
---

```bash

mgc teams installed-apps upgrade post --team-id {team-id} --teams-app-installation-id {teamsAppInstallation-id} --body '{\
  "consentedPermissionSet": {\
    "resourceSpecificPermissions": [\
      {\
        "permissionValue": "Channel.Create.Group",\
        "permissionType": "application"\
      },\
      {\
        "permissionValue": "ChannelMeeting.ReadBasic.Group",\
        "permissionType": "delegated"\
      }\
    ]\
  }\
}\
'

```