---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let pageTemplate = await client.api('/sites/{site-id}/pagetemplates/{page-template-id}/microsoft.graph.pageTemplate')
	.version('beta')
	.get();

```