---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let authorities = await client.api('/security/labels/authorities')
	.version('beta')
	.get();

```