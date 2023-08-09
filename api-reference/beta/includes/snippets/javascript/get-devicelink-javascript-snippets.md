---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let deviceLink = await client.api('/networkAccess/connectivity/branches/{branchSiteId}/deviceLinks/{deviceLinkId}')
	.version('beta')
	.get();

```