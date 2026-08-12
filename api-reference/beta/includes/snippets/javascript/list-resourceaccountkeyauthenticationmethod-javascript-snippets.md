---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let resourceAccountKeyAuthenticationMethods = await client.api('/users/0a3e7ad0-8d1b-4e25-ad43-5b7c7c2b5f6f/authentication/resourceAccountKeyAuthenticationMethods')
	.version('beta')
	.get();

```