---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let alertRule = await client.api('/deviceManagement/monitoring/alertRules/30070507-6514-443b-8fa5-06979cedacdf')
	.version('beta')
	.get();

```