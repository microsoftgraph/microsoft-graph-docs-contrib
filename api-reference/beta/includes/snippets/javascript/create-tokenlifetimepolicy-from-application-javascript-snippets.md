---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tokenLifetimePolicy = {
  '@odata.id':'https://graph.microsoft.com/beta/policies/tokenLifetimePolicies/4d2f137b-e8a9-46da-a5c3-cc85b2b840a4'
};

await client.api('/applications/3ccc9971-9ae7-45d6-8de8-263fd25fe116/tokenLifetimePolicies/$ref')
	.version('beta')
	.post(tokenLifetimePolicy);

```