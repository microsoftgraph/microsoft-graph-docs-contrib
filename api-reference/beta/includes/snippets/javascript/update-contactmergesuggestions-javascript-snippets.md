---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contactMergeSuggestions = {
  isEnabled: false
};

await client.api('/me/settings/contactMergeSuggestions')
	.version('beta')
	.update(contactMergeSuggestions);

```