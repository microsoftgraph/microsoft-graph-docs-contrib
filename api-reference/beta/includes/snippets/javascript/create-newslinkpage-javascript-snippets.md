---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const baseSitePage = {
  '@odata.type': '#microsoft.graph.newsLinkPage',
  newsWebUrl: 'https://someexternalnewssite.com/2024/11/11/contoso-unveils-first-self-driving-car',
  title: 'Contoso Unveils First Self-Driving Car'
};

await client.api('/sites/c1370818-f5e0-4a40-a99b-be4520640642/pages')
	.version('beta')
	.post(baseSitePage);

```