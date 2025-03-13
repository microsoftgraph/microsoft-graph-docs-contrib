---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceLinks = await client.api('/networkAccess/connectivity/branches/{branchSiteId}/deviceLinks')
	.version('beta')
	.get();

```