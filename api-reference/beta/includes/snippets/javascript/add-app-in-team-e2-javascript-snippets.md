---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamsAppInstallation = {
	'teamsApp@odata.bind': 'https://graph.microsoft.com/beta/appCatalogs/teamsApps/7023576d-9e40-47ca-9cf2-daae6838e785',
    consentedPermissionSet: {
        resourceSpecificPermissions: [
        {
          permissionValue: 'OnlineMeeting.ReadBasic.Chat',
          permissionType: 'delegated'
        },
        {
          permissionValue: 'ChatMessage.Read.Chat',
          permissionType: 'application'
        }]
      }
};

await client.api('/teams/7023576d-9e40-47ca-9cf2-daae6838e785/installedApps')
	.version('beta')
	.post(teamsAppInstallation);

```