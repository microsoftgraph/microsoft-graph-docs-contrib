---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let fileUploadSession = await client.api('/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271/microsoft.graph.industryData.azureDataLakeConnector/getUploadSession')
	.version('beta')
	.get();

```