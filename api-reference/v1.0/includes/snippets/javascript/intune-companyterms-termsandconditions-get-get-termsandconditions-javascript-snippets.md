---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let termsAndConditions = await client.api('/deviceManagement/termsAndConditions/{termsAndConditionsId}')
	.get();

```