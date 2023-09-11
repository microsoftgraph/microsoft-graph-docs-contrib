---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const updateAllowedCombinationsResult = {
  allowedCombinations: [
      'password, voice'
  ]
};

await client.api('/policies/authenticationStrengthPolicies/33c5d2c0-884e-4b5d-a5b8-5395082b092c/updateAllowedCombinations')
	.version('beta')
	.post(updateAllowedCombinationsResult);

```