---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let appCredentialSignInActivities = await client.api('/reports/appCredentialSignInActivities')
	.version('beta')
	.get();

```