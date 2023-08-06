---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const _export = {
    outputName: 'Export via API',
    description: 'Export for the Contoso investigation',
    exportOptions: 'originalFiles,tags',
    exportStructure: 'directory'
};

await client.api('/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/reviewSets/273f11a1-17aa-419c-981d-ff10d33e420f/export')
	.version('beta')
	.post(_export);

```