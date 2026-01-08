---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getRecentlyModifiedSubmissions = await client.api('/education/classes/37d99af7-cfc5-4e3b-8566-f7d40e4a2070/getRecentlyModifiedSubmissions')
	.version('beta')
	.filter('lastModifiedDateTime gt 2025-04-10T19:02:00.8753517Z')
	.get();

```