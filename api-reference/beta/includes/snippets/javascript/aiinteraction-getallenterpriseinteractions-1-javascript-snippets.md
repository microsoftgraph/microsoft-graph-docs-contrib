---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAllEnterpriseInteractions = await client.api('/copilot/users/9fcefe95-9677-483e-a3c1-22c5d501d737/interactionHistory/getAllEnterpriseInteractions')
	.version('beta')
	.get();

```