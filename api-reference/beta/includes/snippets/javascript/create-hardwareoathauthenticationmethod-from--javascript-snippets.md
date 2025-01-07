---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const hardwareOathAuthenticationMethod = {
  device: {
        id: 'aad49556-####-####-####-############'
    },
};

await client.api('/me/authentication/hardwareOathMethods')
	.version('beta')
	.post(hardwareOathAuthenticationMethod);

```