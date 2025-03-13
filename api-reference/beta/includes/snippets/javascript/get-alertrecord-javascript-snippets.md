---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let alertRecord = await client.api('/deviceManagement/monitoring/alertRecords/6c46a7ba-e78a-45e5-a81c-179ab8fd3e8e')
	.version('beta')
	.get();

```