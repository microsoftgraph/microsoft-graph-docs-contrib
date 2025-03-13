---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let incident = await client.api('/security/incidents/2972395')
	.get();

```