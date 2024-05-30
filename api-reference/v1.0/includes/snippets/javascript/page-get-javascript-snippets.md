---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let onenotePage = await client.api('/me/onenote/pages/{id}')
	.get();

```