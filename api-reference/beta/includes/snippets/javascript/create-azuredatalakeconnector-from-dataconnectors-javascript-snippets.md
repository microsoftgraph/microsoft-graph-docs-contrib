---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const industryDataConnector = {
    '@odata.type': '#microsoft.graph.industryData.azureDataLakeConnector',
    displayName: 'CSV connector',
    'sourceSystem@odata.bind': 'https://graph.microsoft.com/beta/external/industryData/sourceSystems(\'aa050107-5784-4a8e-1876-08daddab21bc\')',
    fileFormat: {
      '@odata.type': 'microsoft.graph.industryData.fileFormatReferenceValue',
      code: 'schoolDataSyncV1'
    }
};

await client.api('/external/industryData/dataConnectors')
	.version('beta')
	.post(industryDataConnector);

```