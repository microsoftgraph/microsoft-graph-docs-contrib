---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const webApplicationFirewallProvider = {
    '@odata.type': '#microsoft.graph.akamaiWebApplicationFirewallProvider',
    displayName: 'Akamai Provider Example',
    hostPrefix: 'akab-exampleprefix',
    clientSecret: 'akamai_example_secret_123',
    clientToken: 'akamai_example_token_456',
    accessToken: 'akamai_example_token_789'
};

await client.api('/identity/riskPrevention/webApplicationFirewallProviders')
	.post(webApplicationFirewallProvider);

```