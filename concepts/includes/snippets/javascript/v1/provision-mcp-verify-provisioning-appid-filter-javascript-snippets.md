---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let servicePrincipals = await client.api('/servicePrincipals')
	.filter('appId in(\'e8c77dc2-69b3-43f4-bc51-3213c9d915b4\',\'aebc6443-996d-45c2-90f0-388ff96faa56\')')
	.select('id,appId,displayName')
	.get();

```