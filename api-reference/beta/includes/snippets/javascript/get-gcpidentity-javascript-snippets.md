---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let gcpIdentity = await client.api('/external/authorizationSystems/{id}/microsoft.graph.gcpAuthorizationSystem/associatedIdentities/all/dXNlcjFAZ3N1aXRlMS5jb20')
	.version('beta')
	.get();

```