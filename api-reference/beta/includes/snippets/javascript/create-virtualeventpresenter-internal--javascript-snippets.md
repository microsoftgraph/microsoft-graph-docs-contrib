---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const virtualEventPresenter = {
  identity: {
    '@odata.type': '#microsoft.graph.communicationsUserIdentity',
    id: '7b7e1acd-a3e0-4533-8c1d-c1a4ca0b2e2b'
  }
};

await client.api('/solutions/virtualEvents/townhalls/502dadea-b5d8-44aa-a851-a0ac496a36bf@09a21d49-f0f3-4b3f-96b6-f381e9430742/presenters')
	.version('beta')
	.post(virtualEventPresenter);

```