---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const branchSite = {
    name: 'My updated branch'
};

await client.api('/networkAccess/connectivity/branches/{branchSiteId}')
	.version('beta')
	.update(branchSite);

```