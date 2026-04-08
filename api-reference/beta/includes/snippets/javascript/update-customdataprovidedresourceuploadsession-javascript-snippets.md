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

await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs/73eb2497-3b88-4c0a-8bb3-68ba8162beff/accessPackageResources/99ab2454-3b88-4c0a-8bb3-68ba8162beff/uploadSessions/23f27c15-72f9-45fe-9e9c-e3d8f75bdc44')
	.version('beta')
	.update(customDataProvidedResourceUploadSession);

```