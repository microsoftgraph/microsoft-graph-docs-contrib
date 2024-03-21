---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const acronym = {
  displayName: 'DNN',
  standsFor: 'Deep Neural Network',
  description: 'A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.',
  webUrl: 'http://microsoft.com/deep-neural-network',
  state: 'draft'
};

await client.api('/search/acronyms')
	.version('beta')
	.post(acronym);

```