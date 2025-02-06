---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identityProviderBase = await client.api('/identity/identityProviders/Contoso-00001111-aaaa-2222-bbbb-3333cccc4444')
	.version('beta')
	.get();

```