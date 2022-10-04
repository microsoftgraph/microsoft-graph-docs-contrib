---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let ediscoveryReviewSet = await client.api('/security/cases/ediscoveryCases/58399dff-cebe-478f-b1af-d3227f1fd645/reviewSets/273f11a1-17aa-419c-981d-ff10d33e420f')
	.get();

```