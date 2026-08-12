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

await client.api('/identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}')
	.update(customDataProvidedResourceUploadSession);

```