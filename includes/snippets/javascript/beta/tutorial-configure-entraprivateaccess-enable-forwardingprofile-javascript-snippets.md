---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const forwardingProfile = {
   state: 'enabled'
};

await client.api('/networkAccess/forwardingProfiles/983891f5-e561-40ca-a4d1-cf4540d9a000')
	.version('beta')
	.update(forwardingProfile);

```