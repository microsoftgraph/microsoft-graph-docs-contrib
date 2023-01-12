---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const alertComment = {
    '@odata.type': 'microsoft.graph.security.alertComment',
    comment: 'Demo for docs'
};

await client.api('/security/incidents/3962396/comments')
	.version('beta')
	.post(alertComment);

```