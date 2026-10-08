---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let identityAccounts = await client.api('/security/identities/identityAccounts')
	.version('beta')
	.get();

```