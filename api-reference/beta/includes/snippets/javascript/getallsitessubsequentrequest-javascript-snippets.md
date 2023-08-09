---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAllSites = await client.api('/sites/getAllSites')
	.version('beta')
	.skiptoken('U1BHZW9EYXRhTG9jYXRpb25Db2RlYU5BTQ')
	.get();

```