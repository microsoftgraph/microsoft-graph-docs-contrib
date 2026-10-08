---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAllTargetedMessages = await client.api('/users/f47b5f54-6968-4706-a522-31e842b12345/teamwork/getAllTargetedMessages')
	.filter('from/application/id eq \'6d23e712-527b-406f-8d59-d02927885918\'')
	.get();

```