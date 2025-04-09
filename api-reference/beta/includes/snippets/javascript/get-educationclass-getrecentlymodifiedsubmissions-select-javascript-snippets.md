---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getRecentlyModifiedSubmissions = await client.api('/education/classes/bf1f1963-05f6-4cba-903c-5892b4ce3bd7/getRecentlyModifiedSubmissions')
	.version('beta')
	.select('excusedDateTime')
	.get();

```