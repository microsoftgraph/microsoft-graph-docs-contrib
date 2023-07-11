---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const verticalSection = {
  emphasis: 'strong'
};

await client.api('/sites/{site-id}/pages/{page-id}/canvasLayout/verticalSection')
	.version('beta')
	.update(verticalSection);

```