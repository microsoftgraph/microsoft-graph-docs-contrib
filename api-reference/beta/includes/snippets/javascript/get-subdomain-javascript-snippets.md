---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let subdomain = await client.api('/security/threatIntelligence/subdomains/bG9naW4uY29udG9zby5jb20kJGNvbnRvc28uY29t')
	.version('beta')
	.get();

```