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
        permissionValue: 'Channel.Create.Group',
        permissionType: 'application'
      },
      {
        permissionValue: 'ChannelMeeting.ReadBasic.Group',
        permissionType: 'delegated'
      }
    ]
  }
};

await client.api('/teams/20988f0f-a647-42f6-be30-79e04de3c2ed/installedApps/MjA5ODhmMGYtYTY0Ny00MmY2LWJlMzAtNzllMDRkZTNjMmVkIyNmYTkzN2Y4OS1iYWNhLTQ5NzktYmY4YS00MmY5ODE5MWY3ODA=/upgrade')
	.version('beta')
	.post(upgrade);

```