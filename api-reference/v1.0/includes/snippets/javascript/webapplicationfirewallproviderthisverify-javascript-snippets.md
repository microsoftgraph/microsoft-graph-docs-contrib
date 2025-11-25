---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const webApplicationFirewallVerificationModel = {
  hostName: 'www.contoso.com'
};

await client.api('/identity/riskPrevention/webApplicationFirewallProviders/{webApplicationFirewallProviderId}/verify')
	.post(webApplicationFirewallVerificationModel);

```