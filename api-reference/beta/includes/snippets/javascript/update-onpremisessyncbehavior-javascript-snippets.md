---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const onPremisesSyncBehavior = {
  '@odata.type': '#microsoft.graph.onPremisesSyncBehavior',
  isCloudManaged: true
};

await client.api('/groups/e7c2f02a-7a59-40de-8d6e-1e0197b8cfba/onPremisesSyncBehavior')
	.version('beta')
	.update(onPremisesSyncBehavior);

```