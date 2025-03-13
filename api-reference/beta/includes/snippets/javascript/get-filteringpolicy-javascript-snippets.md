---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let filteringPolicy = await client.api('/networkAccess/filteringPolicies/161760b2-7053-4045-b886-3bce286989ae')
	.version('beta')
	.get();

```