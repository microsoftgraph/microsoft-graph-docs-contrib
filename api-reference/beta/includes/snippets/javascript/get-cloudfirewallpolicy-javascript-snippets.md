---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let cloudFirewallPolicy = await client.api('/networkAccess/cloudFirewallPolicies/e3692831-a554-4507-8a60-681a8066eb39')
	.version('beta')
	.get();

```