---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let calendar = await client.api('/users/AlexW@contoso.OnMicrosoft.com/calendar')
	.version('beta')
	.get();

```