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

await client.api('/search/bookmarks/733b26d5-af76-4eea-ac69-1a0ce8716897')
	.update(bookmark);

```