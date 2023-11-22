---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let awsAuthorizationSystemResource = await client.api('/external/authorizationSystems/{id}/microsoft.graph.awsAuthorizationSystem/resources/YXJuOmF3czpzMzo6OnRlc3RidWNrZXQ')
	.version('beta')
	.get();

```