---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let industryDataConnector = await client.api('/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271')
	.version('beta')
	.get();

```