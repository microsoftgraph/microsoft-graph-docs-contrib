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
  title: 'sample',
  showRecommendedPages: false
};

await client.api('/sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pageTemplates/microsoft.graph.pageTemplate/8fbff3f5-0e5d-49e7-89c7-2b042b3bfaa6')
	.version('beta')
	.update(pageTemplate);

```