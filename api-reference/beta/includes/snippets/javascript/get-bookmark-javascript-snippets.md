---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let bookmark = await client.api('/search/bookmarks/{bookmarksId}')
	.version('beta')
	.get();

```