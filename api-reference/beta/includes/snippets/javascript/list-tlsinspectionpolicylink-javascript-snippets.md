---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let policies = await client.api('/networkAccess/filteringProfiles/d734d2de-f2df-4b4a-8c4c-5111f8878275/policies')
	.version('beta')
	.filter('isof(\'microsoft.graph.networkaccess.tlsInspectionPolicyLink\')')
	.get();

```