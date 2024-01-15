---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let citations = await client.api('/security/labels/citations')
	.version('beta')
	.get();

```