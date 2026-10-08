---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const oneDriveForBusinessBrowseSession = {
  restorePointId: 'TXpSbE5HUXpNR1l0TldZMFlpMDBNMk16TFdFeFl6WXRZall3TTJFeFl6Sm1OV000WHpFPV8xNzQ5NTY3MDAwXzE0XzE='
};

await client.api('/solutions/backupRestore/oneDriveForBusinessBrowseSessions')
	.post(oneDriveForBusinessBrowseSession);

```