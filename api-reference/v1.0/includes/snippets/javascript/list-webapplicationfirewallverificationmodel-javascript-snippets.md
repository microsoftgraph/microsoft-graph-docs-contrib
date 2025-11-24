---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let webApplicationFirewallVerifications = await client.api('/identity/riskPrevention/webApplicationFirewallVerifications')
	.get();

```