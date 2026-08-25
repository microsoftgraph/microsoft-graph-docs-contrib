---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/sites/{siteId}/pages/{pageId}/microsoft.graph.sitePage/publish')
	.post();

```