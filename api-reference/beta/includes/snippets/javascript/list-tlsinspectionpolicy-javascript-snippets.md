---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tlsInspectionPolicies = await client.api('/networkAccess/tlsInspectionPolicies')
	.version('beta')
	.get();

```