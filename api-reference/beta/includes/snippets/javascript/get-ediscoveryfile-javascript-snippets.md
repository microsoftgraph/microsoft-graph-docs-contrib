---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let ediscoveryFile = await client.api('/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/reviewSets/273f11a1-17aa-419c-981d-ff10d33e420f/files/000168cdf05c48d98faac7bff8719726a25da40bb2b9c369fb580b8797abf661')
	.version('beta')
	.get();

```