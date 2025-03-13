---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const pendingExternalUserProfile = {
    phoneNumber: '+15555555555',
    displayName: 'Bob Henry'
};

await client.api('/directory/pendingExternalUserProfiles')
	.version('beta')
	.post(pendingExternalUserProfile);

```