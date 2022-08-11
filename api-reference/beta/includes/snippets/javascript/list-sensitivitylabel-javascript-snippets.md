---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let sensitivityLabels = await client.api('/users/bob@contoso.com/security/informationProtection/sensitivityLabels')
	.version('beta')
	.get();

```