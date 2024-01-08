---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const exportPersonalData = {
    storageLocation: 'MyStorageAccount'
};

await client.api('/directory/inboundSharedUserProfiles/c228b2ae-c4fb-4eda-9620-7e73dddd1cac/exportPersonalData')
	.version('beta')
	.post(exportPersonalData);

```