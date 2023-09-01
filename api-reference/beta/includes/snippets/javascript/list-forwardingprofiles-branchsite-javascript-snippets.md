---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let forwardingProfiles = await client.api('/networkAccess/connectivity/branches/{branchSiteId}/forwardingProfiles')
	.version('beta')
	.get();

```