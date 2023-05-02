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
  displayName: 'Contoso authentication level',
  description: 'The only authentication level allowed to access our secret apps',
  allowedCombinations: [
      'password, hardwareOath',
      'password, sms'
  ]
};

await client.api('/policies/authenticationStrengthPolicies')
	.post(authenticationStrengthPolicy);

```