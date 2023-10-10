---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getWebPartsByPosition = await client.api('/sites/{siteId}/pages/{sitePageId}/microsoft.graph.sitePage/getWebPartsByPosition?isInVerticalSection=true')
	.version('beta')
	.get();

```