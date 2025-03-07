---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const m365AppsInstallationOptions = {
  updateChannel: 'current'
};

await client.api('/admin/microsoft365Apps/installationOptions')
	.update(m365AppsInstallationOptions);

```