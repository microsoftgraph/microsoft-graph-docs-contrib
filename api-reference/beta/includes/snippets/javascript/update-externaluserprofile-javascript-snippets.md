---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const externalUserProfile = {
  jobTitle: 'Contractor'
};

await client.api('/directory/externalUserProfiles/{id}')
	.version('beta')
	.update(externalUserProfile);

```