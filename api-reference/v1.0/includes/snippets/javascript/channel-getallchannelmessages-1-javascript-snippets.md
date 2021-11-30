---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAllMessages = await client.api('/teams/01fe12e0-e720-44fd-8854-28c66d1bee40/channels/getAllMessages')
	.filter('lastModifiedDateTime gt 2019-11-01T00:00:00Z and lastModifiedDateTime lt 2021-11-01T00:00:00Z')
	.get();

```