---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let forwardingProfile = await client.api('/networkAccess/forwardingProfiles/{forwardingProfileId}')
	.version('beta')
	.get();

```