---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const group = {
  '@odata.id': 'https://graph.microsoft.com/odata/groups(\'1a9db3ab-0acf-4808-99ae-e8ed581cb2e0\')'
};

await client.api('/policies/mobileAppManagementPolicies/ab90bacf-55a3-4a3e-839a-aa4b74e4f020/includedGroups/$ref')
	.version('beta')
	.post(group);

```