---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const pronounsSettings = {
  isEnabledInOrganization: true
};

await client.api('/organization/{organizationId}/settings/pronouns')
	.version('beta')
	.update(pronounsSettings);

```