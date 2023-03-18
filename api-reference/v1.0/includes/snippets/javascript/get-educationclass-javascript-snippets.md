---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationClass = await client.api('/education/classes/7e4ec76c-8276-43ef-ba10-9aaa197cb212')
	.get();

```