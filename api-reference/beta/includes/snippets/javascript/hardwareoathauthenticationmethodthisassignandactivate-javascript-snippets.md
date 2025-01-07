---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const assignAndActivate = {
  device: {
        id: 'aad49556-####-####-####-############'
    },
  verificationCode: '588651',
  displayName: 'Amy Masters Token'
};

await client.api('/me/authentication/hardwareOathMethods/assignAndActivate')
	.version('beta')
	.post(assignAndActivate);

```