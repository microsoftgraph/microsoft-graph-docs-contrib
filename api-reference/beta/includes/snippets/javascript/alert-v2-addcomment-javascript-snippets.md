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

await client.api('/security/alerts_v2/da637865765418431569_-773071023/comments')
	.version('beta')
	.post(alertComment);

```