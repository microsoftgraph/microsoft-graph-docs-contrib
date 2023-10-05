---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let whoisRecord = await client.api('/security/threatIntelligence/whoisRecords/Y29udG9zby5jb20kJDY5NjQ3ODEyMDc3NDY1NzI0MzM=')
	.get();

```