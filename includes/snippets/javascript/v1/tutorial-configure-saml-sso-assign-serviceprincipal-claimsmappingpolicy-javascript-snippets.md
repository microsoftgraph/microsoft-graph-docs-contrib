---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const claimsMappingPolicy = {
    '@odata.id': 'https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/92037c7a-a875-49a0-814e-8ec30f880e2e'
};

await client.api('/servicePrincipals/ef04fead-8549-4e59-b5f7-d1d8c697ec64/claimsMappingPolicies/$ref')
	.post(claimsMappingPolicy);

```