---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/identity/verifiedId/profiles/ca15ec56-7adf-42ee-847b-00c3008264fb')
	.version('beta')
	.delete();

```