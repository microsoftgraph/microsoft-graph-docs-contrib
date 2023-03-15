---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let contactMergeSuggestions = await client.api('/me/settings/contactMergeSuggestions')
	.version('beta')
	.get();

```