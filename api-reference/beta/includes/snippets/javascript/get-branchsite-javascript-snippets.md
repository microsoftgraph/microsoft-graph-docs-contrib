---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let branchSite = await client.api('/networkAccess/connectivity/branches/{branchSiteId}')
	.version('beta')
	.get();

```