---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const oAuth2PermissionGrant = {
    scope: 'User.Read.All'
};

await client.api('/oauth2PermissionGrants/47nZsM8O_UuNq5Jz3QValETpqX7OcT1EgRxx6AR7VXqdkr0_VoxiRIUeDrmns6Kl')
	.update(oAuth2PermissionGrant);

```