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

await client.api('/networkAccess/forwardingProfiles/bbbbbbbb-1111-2222-3333-cccccccccccc')
	.version('beta')
	.update(forwardingProfile);

```