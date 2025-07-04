---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const activate = {
  verificationCode: '588651',
  displayName: 'Amy Masters Token'
};

await client.api('/me/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}/activate')
	.version('beta')
	.post(activate);

```