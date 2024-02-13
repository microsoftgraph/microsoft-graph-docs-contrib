---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let branchConnectivityConfiguration = await client.api('/networkAccess/connectivity/branches/{branchSiteId}/connectivityConfiguration')
	.version('beta')
	.get();

```