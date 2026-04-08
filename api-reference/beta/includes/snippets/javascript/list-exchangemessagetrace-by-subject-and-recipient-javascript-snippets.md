---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let messageTraces = await client.api('/admin/exchange/tracing/messageTraces')
	.version('beta')
	.filter('contains(subject, \'Weekly digest\') and recipientAddress eq \'test@contoso.com\'')
	.get();

```