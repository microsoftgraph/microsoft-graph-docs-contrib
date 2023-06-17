---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const administrativeUnit = {
    displayName: 'Seattle District Technical Schools',
    description: 'Seattle district technical schools administration',
    membershipType: 'Dynamic',
    membershipRule: '(user.country -eq \"United States\")',
    membershipRuleProcessingState: 'On'
};

await client.api('/administrativeUnits')
	.version('beta')
	.post(administrativeUnit);

```