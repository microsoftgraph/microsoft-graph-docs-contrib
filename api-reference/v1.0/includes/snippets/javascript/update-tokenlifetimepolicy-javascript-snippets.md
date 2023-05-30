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
        '{\"TokenLifetimePolicy\':{\'Version\':1,\'AccessTokenLifetime\':\"5:30:00\"}}"
    ],
    displayName: 'Contoso token lifetime policy',
    isOrganizationDefault: true
};

await client.api('/policies/tokenLifetimePolicies/4d2f137b-e8a9-46da-a5c3-cc85b2b840a4')
	.update(tokenLifetimePolicy);

```