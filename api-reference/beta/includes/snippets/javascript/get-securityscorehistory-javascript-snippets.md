---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let securityScoreHistory = await client.api('/security/partner/securityScore/history/{securityScoreHistoryId}')
	.version('beta')
	.get();

```