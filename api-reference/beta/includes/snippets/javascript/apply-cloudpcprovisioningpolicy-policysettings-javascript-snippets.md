---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const apply = {
  policySettings: 'region'
};

await client.api('/deviceManagement/virtualEndpoint/provisioningPolicies/1d164206-bf41-4fd2-8424-a3192d39ffff/apply')
	.version('beta')
	.post(apply);

```