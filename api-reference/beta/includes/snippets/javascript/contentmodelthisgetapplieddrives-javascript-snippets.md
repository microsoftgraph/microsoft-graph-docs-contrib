---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let getAppliedDrives = await client.api('/sites/ede4bb84-6c94-4c39-8acf-3d9dbb667fba/contentModels/ede4bb84-6c94-4c39-8acf-3d9dbb667fba/getAppliedDrives')
	.version('beta')
	.get();

```