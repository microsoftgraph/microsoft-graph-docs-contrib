---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let findByKbNumber = await client.api('/admin/windows/updates/products/FindByKbNumber(kbNumber=5029332)?expand=revisions($expand=catalogEntry,knowledgeBaseArticle),knownIssues')
	.version('beta')
	.get();

```