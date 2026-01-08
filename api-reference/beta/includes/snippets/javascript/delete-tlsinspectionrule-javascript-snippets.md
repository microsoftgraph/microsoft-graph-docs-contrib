---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/networkAccess/tlsInspectionPolicies/b712c469-e7cd-e7cb-738f-94b199570b0d/policyRules/ecf99dcc-6575-4d01-83dc-3fa5a940c76b')
	.version('beta')
	.delete();

```