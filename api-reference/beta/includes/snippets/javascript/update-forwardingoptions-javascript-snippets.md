---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const forwardingOptions = {
     skipDnsLookupState: 'disabled'
};

await client.api('/networkAccess/settings/forwardingOptions')
	.version('beta')
	.update(forwardingOptions);

```