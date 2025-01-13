---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let mutualTlsOauthConfigurations = await client.api('/directory/certificateAuthorities/mutualTlsOauthConfigurations')
	.version('beta')
	.get();

```