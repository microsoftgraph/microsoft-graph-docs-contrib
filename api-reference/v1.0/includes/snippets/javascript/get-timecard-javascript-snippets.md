---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let timeCard = await client.api('/teams/fd15cad8-80f6-484f-9666-3caf695fbf32/schedule/timeCards/TCK_3e74d9a1-f45f-4da3-95df-be72a8af448d')
	.get();

```