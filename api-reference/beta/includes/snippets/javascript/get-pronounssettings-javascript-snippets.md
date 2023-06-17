---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let pronounsSettings = await client.api('/organization/{organizationId}/settings/pronouns')
	.version('beta')
	.get();

```