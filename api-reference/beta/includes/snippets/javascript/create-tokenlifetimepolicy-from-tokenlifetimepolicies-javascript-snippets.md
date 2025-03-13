---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const tokenLifetimePolicy = {
    definition: [
        '{\"TokenLifetimePolicy\':{\'Version\':1,\'AccessTokenLifetime\':\"8:00:00\"}}"
    ],
    displayName: 'Contoso token lifetime policy',
    isOrganizationDefault: true
};

await client.api('/policies/tokenLifetimePolicies')
	.version('beta')
	.post(tokenLifetimePolicy);

```