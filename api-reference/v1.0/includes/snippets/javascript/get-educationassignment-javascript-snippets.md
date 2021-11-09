---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let educationAssignment = await client.api('/education/classes/f4a941ff-9da6-4707-ba5b-0eae93cad0b4/assignments/3c77de7f-539b-49e1-9c96-1274f2f0ee3b')
	.get();

```