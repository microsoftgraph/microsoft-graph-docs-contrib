---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const pendingExternalUserProfile = {
  jobTitle: 'Contractor'
};

await client.api('/directory/pendingExternalUserProfiles/{id}')
	.version('beta')
	.update(pendingExternalUserProfile);

```