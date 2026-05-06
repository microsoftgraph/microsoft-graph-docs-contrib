---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const customDataProvidedResourceUploadSession = --MyPartBoundary198374
Content-Disposition: form-data; name='file'; filename='valid.csv'
Content-Type: application/octet-stream

PrincipalAADId,ResourceId,ResourceName,ResourceDescription,ResourceType,PermissionId,PermissionName,PermissionDescription,PermissionType,ResourceOwners
john.doe@contoso.com,550e8400-e29b-41d4-a716-446655440000,Building A,Main office building,Building,6ba7b810-9dad-11d1-80b4-00c04fd430c8,Access,Physical access to building,Physical,['admin@contoso.com']
jane.doe@contoso.com,550e8400-e29b-41d4-a716-446655440001,Room 101,Conference room,Room,6ba7b810-9dad-11d1-80b4-00c04fd430c9,Reserve,Book conference room,Administrative,['admin@contoso.com','manager@contoso.com']
--MyPartBoundary198374;

await client.api('/identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalogId}/accessPackageResources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}/uploadFile')
	.version('beta')
	.post(customDataProvidedResourceUploadSession);

```