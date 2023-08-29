---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const industryDataConnector = {
  '@odata.type': 'microsoft.graph.industryData.azureDataLakeConnector',
  displayName: 'API Monitor 60201009'
};

await client.api('/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271')
	.version('beta')
	.update(industryDataConnector);

```