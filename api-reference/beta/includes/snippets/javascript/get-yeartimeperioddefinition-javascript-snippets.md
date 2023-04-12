---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let yearTimePeriodDefinition = await client.api('/external/industryData/years/ebf18762-ab92-487e-21d1-08daddab28bb')
	.version('beta')
	.get();

```