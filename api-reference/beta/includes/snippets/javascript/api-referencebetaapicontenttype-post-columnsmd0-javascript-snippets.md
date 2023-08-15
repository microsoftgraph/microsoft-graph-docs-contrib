---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const columnDefinition = {
   'sourceColumn@odata.bind':'https://graph.microsoft.com/beta/sites/root/columns/99ddcf45-e2f7-4f17-82b0-6fba34445103'
};

await client.api('/sites/{site-id}/contentTypes/{contentType-id}/columns')
	.version('beta')
	.post(columnDefinition);

```