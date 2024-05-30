---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let awsUser = await client.api('/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/associatedIdentities/users/YXJuOmF3czppYW06OjEyMzQ1Njc4OTAxMjp1c2VyL2JvYg')
	.version('beta')
	.get();

```