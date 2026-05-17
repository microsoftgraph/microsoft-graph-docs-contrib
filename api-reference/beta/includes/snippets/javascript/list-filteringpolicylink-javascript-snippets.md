---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policies = await client.api('/networkaccess/filteringProfiles/519085fd-efb2-437c-af22-04bff0c2b571/policies')
	.version('beta')
	.get();

```