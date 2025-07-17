---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let certificateBasedAuthConfigurations = await client.api('/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations')
	.version('beta')
	.get();

```