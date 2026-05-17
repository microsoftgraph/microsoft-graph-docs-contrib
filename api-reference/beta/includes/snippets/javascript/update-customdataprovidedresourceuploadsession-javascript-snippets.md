---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customDataProvidedResourceUploadSession = {
  isUploadDone: true
};

await client.api('/identityGovernance/catalogs/{catalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}')
	.version('beta')
	.update(customDataProvidedResourceUploadSession);

```