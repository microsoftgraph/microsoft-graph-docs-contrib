---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const branchSite = {
    name: 'test branch - 11:50',
    country: 'United States',
    region: 'East US',
    bandwidthCapacity: 500
};

await client.api('/networkAccess/connectivity/branches')
	.version('beta')
	.post(branchSite);

```