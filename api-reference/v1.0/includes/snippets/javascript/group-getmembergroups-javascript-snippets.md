---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const string = {
  securityEnabledOnly: false
};

await client.api('/groups/1132b215-826f-42a9-8cfe-1643d19d17fd/getMemberGroups')
	.post(string);

```