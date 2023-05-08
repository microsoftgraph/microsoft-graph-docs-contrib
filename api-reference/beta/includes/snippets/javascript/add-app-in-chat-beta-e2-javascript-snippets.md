---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const teamsAppInstallation = {
	'teamsApp@odata.bind': 'https://graph.microsoft.com/beta/appCatalogs/teamsApps/2b524e28-95ce-4c9b-9773-4a5bd6ec1770',
    consentedPermissionSet: {
        resourceSpecificPermissions: [
        {
          permissionValue: 'OnlineMeeting.ReadBasic.Chat',
          permissionType: 'Delegated'
        },
        {
          permissionValue: 'OnlineMeetingIncomingAudio.Detect.Chat',
          permissionType: 'Delegated'
        },
        {
          permissionValue: 'ChatMember.Read.Chat',
          permissionType: 'Application'
        },
        {
          permissionValue: 'ChatMessage.Read.Chat',
          permissionType: 'Application'
        }]
      }
};

await client.api('/chats/19:ea28e88c00e94c7786b065394a61f296@thread.v2/installedApps')
	.version('beta')
	.post(teamsAppInstallation);

```