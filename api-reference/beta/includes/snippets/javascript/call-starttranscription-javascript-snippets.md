---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const startTranscription = {
  language: 'en-us'
};

await client.api('/communications/calls/02000980-58ea-4bf2-bb77-8ba548da56f7/microsoft.graph.StartTranscription')
	.version('beta')
	.post(startTranscription);

```