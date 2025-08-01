---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const exportResult = {
  displayName: 'Export 2',
  exportCriteria: 'searchHits, partiallyIndexed',
  exportLocation: 'responsiveLocations, nonresponsiveLocations',
  additionalOptions: 'splitSource',
  exportFormat: 'pst'
};

await client.api('/security/cases/ediscoveryCases/dbc06feb-a6a5-46a2-8e4e-534353b071e4/searches/6c2ab774-2d2a-46b9-a601-3130f518757b/exportResult')
	.version('beta')
	.post(exportResult);

```