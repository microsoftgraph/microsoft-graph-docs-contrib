---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const claimsMappingPolicy = {
 '@odata.id': 'https://graph.microsoft.com/v1.0/policies/claimsMappingPolicies/06d5d20d-2955-45f8-a15d-cf2f434b8116'
};

await client.api('/servicePrincipals/3bdbbc1a-5e94-4c2b-895f-231d8af4beee/claimsMappingPolicies/$ref')
	.post(claimsMappingPolicy);

```