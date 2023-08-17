---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let pronounsSettings = await client.api('/admin/people/pronouns')
	.version('beta')
	.get();

```