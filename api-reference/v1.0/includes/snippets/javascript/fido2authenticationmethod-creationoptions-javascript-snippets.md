---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let webauthnCredentialCreationOptions = await client.api('/users/99a1915f-70a7-4b67-9dca-64095b41be73/authentication/fido2Methods/creationOptions')
	.get();

```