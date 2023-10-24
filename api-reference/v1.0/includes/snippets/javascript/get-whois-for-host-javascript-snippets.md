---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let whoisRecord = await client.api('/security/threatIntelligence/hosts/contoso.com/whois')
	.get();

```