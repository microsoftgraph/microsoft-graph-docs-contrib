---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let microsoftApplicationDataAccessSettings = await client.api('/organization/{organizationId}/settings/microsoftApplicationDataAccess')
	.version('beta')
	.get();

```