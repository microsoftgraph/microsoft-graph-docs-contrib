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

await client.api('/sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pages/df69e386-6c58-4df2-afc0-ab6327d5b202/microsoft.graph.sitePage')
	.update(sitePage);

```