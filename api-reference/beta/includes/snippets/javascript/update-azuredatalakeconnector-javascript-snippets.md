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
  displayName: 'CSV files from SIS'
};

await client.api('/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271')
	.version('beta')
	.update(industryDataConnector);

```