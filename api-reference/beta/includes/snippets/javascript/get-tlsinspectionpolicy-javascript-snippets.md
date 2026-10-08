---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let tlsInspectionPolicy = await client.api('/networkAccess/tlsInspectionPolicies/b712c469-e7cd-e7cb-738f-94b199570b0d')
	.version('beta')
	.get();

```