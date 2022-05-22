---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const microsoftApplicationDataAccessSettings = {
  disabledForGroup: 'edbfe4fb-ec70-4300-928f-dbb2ae86c981'
};

await client.api('/organization/{organizationId}/settings/microsoftApplicationDataAccess')
	.version('beta')
	.update(microsoftApplicationDataAccessSettings);

```