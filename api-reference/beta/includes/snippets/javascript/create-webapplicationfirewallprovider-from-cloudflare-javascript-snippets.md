---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const webApplicationFirewallProvider = {
    '@odata.type': '#microsoft.graph.cloudFlareWebApplicationFirewallProvider',
    displayName: 'Cloudflare Provider Example',
    zoneId: '11111111111111111111111111111111',
    apiToken: 'cf_example_token_123'
};

await client.api('/identity/riskPrevention/webApplicationFirewallProviders')
	.version('beta')
	.post(webApplicationFirewallProvider);

```