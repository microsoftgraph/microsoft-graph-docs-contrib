---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const conditionalAccessSettings = {
    '@odata.context': 'https://graph.microsoft.com/beta/networkAccess/settings/$metadata#conditionalAccess',
    signalingStatus: 'disabled'
};

await client.api('/networkAccess/settings/conditionalAccess')
	.version('beta')
	.update(conditionalAccessSettings);

```