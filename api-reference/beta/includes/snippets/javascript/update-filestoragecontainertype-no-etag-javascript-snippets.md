---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fileStorageContainerType = {
  '@odata.type': '#microsoft.graph.fileStorageContainerType',
  settings: {
    urlTemplate: 'https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}',
    isItemVersioningEnabled: true,
    isSharingRestricted: false
  }
};

await client.api('/storage/fileStorage/containerTypes/de988700-d700-020e-0a00-0831f3042f00')
	.version('beta')
	.update(fileStorageContainerType);

```