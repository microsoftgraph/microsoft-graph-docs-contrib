---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let findByCatalogId = await client.api('/admin/windows/updates/products/FindByCatalogId(catalogID='10cb1ba292c5586e22c9991be3f12fbd39f2ebf231cb5d201c67f42fbaccc567')?expand=revisions($expand=catalogEntry,knowledgeBaseArticle),knownIssues($expand=originatingKnowledgeBaseArticle,resolvingKnowledgeBaseArticle)')
	.version('beta')
	.get();

```