---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const pageTemplate = {
  title: 'SampleTitle',
  name: 'SampleTemplate.aspx'
};

await client.api('/sites/dd00d52e-0db7-4d5f-8269-90060ac688d1/pages/f6ed8c43-9923-4c6c-ba09-9c32b8f10aeb/microsoft.graph.sitePage/saveAsTemplate')
	.version('beta')
	.post(pageTemplate);

```