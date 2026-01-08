---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const signInIdentifierBase = {
  '@odata.type': '#microsoft.graph.emailSignInIdentifier',
  name: 'Email',
  isEnabled: true
};

await client.api('/identity/signInIdentifiers/Email')
	.version('beta')
	.update(signInIdentifierBase);

```