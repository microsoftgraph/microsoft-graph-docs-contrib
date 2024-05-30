---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let trackers = await client.api('/security/threatIntelligence/hosts/contoso.com/trackers')
	.version('beta')
	.get();

```