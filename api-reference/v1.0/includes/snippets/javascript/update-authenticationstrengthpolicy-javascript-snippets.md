---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authenticationStrengthPolicy = {
  '@odata.type': '#microsoft.graph.authenticationStrengthPolicy',
  displayName: 'FIDO2 only',
  description: 'An auth strength allowing only FIDO2 security keys.'
};

await client.api('/policies/authenticationStrengthPolicies/a34a4c89-c5bf-4c0b-927d-adc396bf1f19')
	.update(authenticationStrengthPolicy);

```