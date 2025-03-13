---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let bookmarks = await client.api('/search/bookmarks')
	.version('beta')
	.get();

```