---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let certificateAuthorityDetail = await client.api('/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/certificateAuthorities/{certificateAuthorityDetailId}')
	.version('beta')
	.get();

```