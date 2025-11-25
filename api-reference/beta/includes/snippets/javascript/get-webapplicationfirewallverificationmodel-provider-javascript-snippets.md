---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let webApplicationFirewallVerificationModel = await client.api('/identity/riskPrevention/webApplicationFirewallVerifications/{webApplicationFirewallVerificationModelId}')
	.version('beta')
	.expand('provider')
	.get();

```