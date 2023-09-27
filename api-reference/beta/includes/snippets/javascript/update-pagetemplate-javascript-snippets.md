---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const pageTemplate = {
  '@odata.type': '#microsoft.graph.pageTemplate',
  title: 'sample'
};

await client.api('/sites/{sitesId}/pagetemplates/{page-template-Id}')
	.version('beta')
	.update(pageTemplate);

```