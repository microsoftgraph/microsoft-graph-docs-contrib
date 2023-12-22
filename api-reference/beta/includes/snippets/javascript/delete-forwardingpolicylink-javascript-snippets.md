---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/networkaccess/forwardingProfiles/{forwardingProfile_id}/policies/{policy_id}')
	.version('beta')
	.delete();

```