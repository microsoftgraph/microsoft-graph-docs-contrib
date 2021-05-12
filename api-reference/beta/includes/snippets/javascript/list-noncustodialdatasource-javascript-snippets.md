---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let noncustodialSources = await client.api('/compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/noncustodialSources')
	.version('beta')
	.get();

```