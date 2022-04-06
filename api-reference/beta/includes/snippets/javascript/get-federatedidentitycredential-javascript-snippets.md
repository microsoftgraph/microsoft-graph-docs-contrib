---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let federatedIdentityCredential = await client.api('/applications/acd7c908-1c4d-4d48-93ee-ff38349a75c8/federatedIdentityCredentials/bdad0963-4a7a-43ae-b569-e67e1da3f2c0')
	.version('beta')
	.get();

```