---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let timeCards = await client.api('/teams/871dbd5c-3a6a-4392-bfe1-042452793a50/schedule/timeCards')
	.get();

```