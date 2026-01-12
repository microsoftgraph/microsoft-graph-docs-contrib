---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const sharePointMigrationJob = {
  containerInfo: {
    dataContainerUri: 'https://spoxxx.blob.core.windows.net/data?sp=rw&sig=',
    metadataContainerUri: 'https://spoxxx.blob.core.windows.net/metadata?sp=rw&sig=',
    encryptionKey: 'base64 encoded key for AES-256-CBC encryption'
  }
};

await client.api('/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/migrationJobs')
	.version('beta')
	.post(sharePointMigrationJob);

```