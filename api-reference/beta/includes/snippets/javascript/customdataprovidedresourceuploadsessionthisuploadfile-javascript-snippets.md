---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customDataProvidedResourceUploadSession = --MyPartBoundary198374
Content-Disposition: form-data; name='file'; filename='building-access-data.csv'
Content-Type: application/octet-stream

principalId,principalType,permissionId,permissionName,permissionDescription,permissionType
550e8400-e29b-41d4-a716-446655440000,user,6ba7b810-9dad-11d1-80b4-00c04fd430c8,Access,Physical access to building,Physical
7c9e6679-7425-40de-944b-e07fc1f90ae7,user,6ba7b810-9dad-11d1-80b4-00c04fd430c9,Reserve,Book conference room,Administrative
--MyPartBoundary198374;

await client.api('/identityGovernance/catalogs/{catalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}/uploadFile')
	.version('beta')
	.post(customDataProvidedResourceUploadSession);

```