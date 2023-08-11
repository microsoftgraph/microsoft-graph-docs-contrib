---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let acceptanceStatuses = await client.api('/deviceManagement/termsAndConditions/{termsAndConditionsId}/acceptanceStatuses')
	.get();

```