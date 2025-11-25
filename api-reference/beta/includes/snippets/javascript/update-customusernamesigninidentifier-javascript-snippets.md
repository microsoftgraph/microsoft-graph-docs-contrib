---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const signInIdentifierBase = {
  '@odata.type': '#microsoft.graph.customUsernameSignInIdentifier',
  name: 'CustomUsername1',
  isEnabled: true,
  validationRegex: '^[a-zA-Z]{4}\\d{5}$'
};

await client.api('/identity/signInIdentifiers/CustomUsername1')
	.version('beta')
	.update(signInIdentifierBase);

```