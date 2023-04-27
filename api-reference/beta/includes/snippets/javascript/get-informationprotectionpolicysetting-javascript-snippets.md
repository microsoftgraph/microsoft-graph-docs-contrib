---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let informationProtectionPolicySetting = await client.api('/users/bob@contoso.com/security/informationProtection/labelPolicySettings')
	.version('beta')
	.get();

```