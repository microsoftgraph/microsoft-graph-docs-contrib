---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const upload = {
  uploadUrl: 'https://microsoft.sharepoint.com/CBA/demo/CBARootPKI.p7b',
  sha256FileHash: 'D7F9....61E6F'
};

await client.api('/directory/publicKeyInfrastructure/certificateBasedAuthConfigurations/{certificateBasedAuthPkiId}/upload')
	.version('beta')
	.post(upload);

```