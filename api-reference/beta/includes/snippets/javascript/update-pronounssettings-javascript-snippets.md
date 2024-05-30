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

await client.api('/admin/people/pronouns')
	.version('beta')
	.update(pronounsSettings);

```