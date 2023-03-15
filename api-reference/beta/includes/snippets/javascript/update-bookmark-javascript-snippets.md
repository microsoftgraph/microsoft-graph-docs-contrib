---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const bookmark = {
  description: 'Book a fancy vacation in Tuscany or browse museums in Florence.'
};

await client.api('/search/bookmarks/{bookmarksId}')
	.version('beta')
	.update(bookmark);

```