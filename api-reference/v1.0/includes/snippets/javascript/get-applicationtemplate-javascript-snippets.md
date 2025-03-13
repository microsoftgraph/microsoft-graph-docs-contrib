---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let applicationTemplate = await client.api('/applicationTemplates/00000007-0000-0000-c000-000000000000')
	.get();

```