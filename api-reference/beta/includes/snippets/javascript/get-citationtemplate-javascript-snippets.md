---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let citationTemplate = await client.api('/security/labels/citations/c0475d01-d532-8a53-6e26-14ea58c640bf')
	.version('beta')
	.get();

```