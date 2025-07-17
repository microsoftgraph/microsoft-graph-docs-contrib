---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let webauthnCredentialCreationOptions = await client.api('/users/{usersId}/authentication/fido2Methods/creationOptions(challengeTimeoutInMinutes=10)')
	.version('beta')
	.get();

```