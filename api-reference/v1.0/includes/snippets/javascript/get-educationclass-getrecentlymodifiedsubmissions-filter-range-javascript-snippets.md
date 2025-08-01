---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getRecentlyModifiedSubmissions = await client.api('/education/classes/bf1f1963-05f6-4cba-903c-5892b4ce3bd7/getRecentlyModifiedSubmissions')
	.filter('lastModifiedDateTime gt 2025-04-10T19:02:00.8753517Z and lastModifiedDateTime lt 2025-04-14T23:02:00.8753517Z')
	.get();

```