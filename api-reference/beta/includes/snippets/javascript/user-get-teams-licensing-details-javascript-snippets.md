---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let teamsLicensingDetails = await client.api('/users/2f39ffba-51ca-4d2d-a66f-a020a83ce208/licenseDetails/getTeamsLicensingDetails')
	.version('beta')
	.get();

```