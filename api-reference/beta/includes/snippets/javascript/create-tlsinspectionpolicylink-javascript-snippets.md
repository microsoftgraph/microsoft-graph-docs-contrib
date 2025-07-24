---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const policyLink = {
  '@odata.type': '#microsoft.graph.networkaccess.tlsInspectionPolicyLink',
  state: 'enabled',
  policy: {
    '@odata.type': '#microsoft.graph.networkaccess.tlsInspectionPolicy',
    id: 'b712c469-e7cd-e7cb-738f-94b199570b0d'
  }
};

await client.api('/networkAccess/filteringProfiles/d734d2de-f2df-4b4a-8c4c-5111f8878275/policies')
	.version('beta')
	.post(policyLink);

```