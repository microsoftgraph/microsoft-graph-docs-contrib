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
	.filter('onPremisesSecurityIdentifier eq \'S-1-5-21-989687458-3461180213-172365591-281652\'')
	.get();

```