---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const incident = {
    classification: 'TruePositive',
    determination: 'MultiStagedAttack',
    customTags: [
      'Demo'
    ]
};

await client.api('/security/incidents/2972395')
	.update(incident);

```