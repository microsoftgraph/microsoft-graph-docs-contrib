---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mailboxSettings = await client.api('/users/AlexW@contoso.OnMicrosoft.com/mailboxsettings')
	.version('beta')
	.get();

```