---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

await client.api('/certificateAuthorities/mutualTlsOauthConfigurations/2d62b12a-0163-457d-9796-9602e9807e1')
	.version('beta')
	.delete();

```