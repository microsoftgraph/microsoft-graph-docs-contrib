---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const authorityTemplate = {
  '@odata.type': '#microsoft.graph.security.authorityTemplate',
  displayName: 'Business',
};

await client.api('/security/labels/authorities')
	.post(authorityTemplate);

```