---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let certificateBasedAuthPki = await client.api('/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}')
	.version('beta')
	.get();

```