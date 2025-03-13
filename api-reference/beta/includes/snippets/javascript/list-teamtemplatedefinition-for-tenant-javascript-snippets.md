---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamTemplates = await client.api('/teamwork/teamTemplates')
	.version('beta')
	.get();

```