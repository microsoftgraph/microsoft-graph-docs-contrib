---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const distributionList = {
  displayName: 'Project Team'
};

await client.api('/me/distributionLists')
	.version('beta')
	.post(distributionList);

```