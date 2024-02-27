---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let federationConfiguration = await client.api('/domains/{domainsId}/federationConfiguration')
	.version('beta')
	.get();

```