---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const filteringProfile = {state: 'disabled'};

await client.api('/networkAccess/filteringProfiles/{filteringProfileId}')
	.version('beta')
	.update(filteringProfile);

```