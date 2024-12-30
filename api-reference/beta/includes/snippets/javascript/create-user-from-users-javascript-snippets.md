---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const user = {
    '@odata.id': 'https://graph.microsoft-ppe.com/beta/users/0cadbf92-####-####-####-############'
};

await client.api('/users/{usersId}/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}/device/assignTo/$ref')
	.version('beta')
	.put(user);

```