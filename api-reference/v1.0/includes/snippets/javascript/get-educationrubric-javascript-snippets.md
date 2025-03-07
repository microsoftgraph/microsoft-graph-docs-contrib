---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationRubric = await client.api('/education/me/rubrics/199816a3-bd27-4134-bffa-b3928e8ab3a5')
	.get();

```