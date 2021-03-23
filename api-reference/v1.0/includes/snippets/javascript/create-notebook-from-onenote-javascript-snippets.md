---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const notebook = {
  displayName: 'Notebook name'
};

await client.api('/me/onenote/notebooks')
	.post(notebook);

```