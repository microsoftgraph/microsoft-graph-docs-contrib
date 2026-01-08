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
  displayName: 'cloudFlare'
};

await client.api('/identity/riskPrevention/webApplicationFirewallProviders/{webApplicationFirewallProviderId}')
	.version('beta')
	.update(webApplicationFirewallProvider);

```