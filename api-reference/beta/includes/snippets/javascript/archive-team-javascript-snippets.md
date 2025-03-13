---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const archive = {

};

await client.api('/teams/{id}/archive')
	.version('beta')
	.post(archive);

```