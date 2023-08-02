---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let message = await client.api('/me/messages/AAMkAGE1M2_bs88AACHsLqWAAA=')
	.expand('singleValueExtendedProperties($filter=id eq \'String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color\')')
	.get();

```