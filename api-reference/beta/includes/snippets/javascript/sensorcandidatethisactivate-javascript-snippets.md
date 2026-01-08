---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const activate = {
  serverIds: [
    'c0633ebb-8cfb-f17a-0b9e-83aa661f53a3'
  ]
};

await client.api('/security/identities/sensorCandidates/activate')
	.version('beta')
	.post(activate);

```