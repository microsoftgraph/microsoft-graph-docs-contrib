---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const signInIdentifierBase = {
  '@odata.type': '#microsoft.graph.upnSignInIdentifier',
  name: 'UPN',
  isEnabled: true
};

await client.api('/identity/signInIdentifiers/UPN')
	.version('beta')
	.update(signInIdentifierBase);

```