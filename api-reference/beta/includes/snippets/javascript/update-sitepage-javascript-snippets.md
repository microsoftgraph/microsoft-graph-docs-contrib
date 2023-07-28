---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sitePage = {
  '@odata.type': '#microsoft.graph.sitePage',
  title: 'sample',
  showComments: true,
  showRecommendedPages: false
};

await client.api('/sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage')
	.version('beta')
	.update(sitePage);

```