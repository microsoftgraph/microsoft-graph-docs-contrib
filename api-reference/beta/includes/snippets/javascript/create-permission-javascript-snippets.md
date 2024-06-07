---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const permission = {
  roles: ['reader'],
  grantedToV2: {
    user: {
      userPrincipalName: 'jacob@fabrikam.com'
    }
  }
};

await client.api('/storage/fileStorage/containers/{containerId}/permissions')
	.version('beta')
	.post(permission);

```