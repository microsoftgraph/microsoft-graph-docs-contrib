---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let azureADPremiumLicenseInsight = await client.api('/reports/azureADPremiumLicenseInsight')
	.version('beta')
	.get();

```