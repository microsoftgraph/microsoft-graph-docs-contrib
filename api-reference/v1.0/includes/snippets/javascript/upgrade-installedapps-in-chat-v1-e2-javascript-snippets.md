---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const upgrade = {
  consentedPermissionSet: {
      resourceSpecificPermissions: [
      {
        permissionValue: 'OnlineMeeting.ReadBasic.Chat',
        permissionType: 'Delegated'
      },
      {
        permissionValue: 'ChatMember.Read.Chat',
        permissionType: 'Application'
      }]
    }
};

await client.api('/chats/19:ea28e88c00e94c7786b065394a61f296@thread.v2/installedApps/NjRiOWM3NDYtYjE1NS00MDQyLThkNDctOTQxYmQzODE2ODFiIyMwZDgyMGVjZC1kZWYyLTQyOTctYWRhZC03ODA1NmNkZTdjNzg=/upgrade')
	.post(upgrade);

```