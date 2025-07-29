---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const filteringProfile = {
  name: 'Security Profile for UserA',
  state: 'enabled',
  priority: 100,
  policies: []
};

await client.api('/networkaccess/filteringProfiles')
	.version('beta')
	.post(filteringProfile);

```