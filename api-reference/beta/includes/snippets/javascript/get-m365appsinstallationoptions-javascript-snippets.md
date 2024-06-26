---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let m365AppsInstallationOptions = await client.api('/admin/microsoft365Apps/installationOptions')
	.version('beta')
	.get();

```