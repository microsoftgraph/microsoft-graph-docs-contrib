---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const acronym = {
  description: 'A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.'
};

await client.api('/search/acronyms/733b26d5-af76-4eea-ac69-1a0ce8716897')
	.update(acronym);

```