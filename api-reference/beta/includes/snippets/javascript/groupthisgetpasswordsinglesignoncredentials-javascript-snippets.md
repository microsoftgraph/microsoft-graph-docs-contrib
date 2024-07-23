---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/groups/314ac440-129f-4cb3-ad61-24ef4a7de1d9/getPasswordSingleSignOnCredentials')
	.version('beta')
	.post();

```