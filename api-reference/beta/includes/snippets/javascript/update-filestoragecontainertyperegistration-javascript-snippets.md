---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const fileStorageContainerTypeRegistration = {
  settings: {
    sharingCapability: 'externalUserAndGuestSharing',
    isSearchEnabled: false
  },
  applicationPermissionGrants: [
    {
      appId: '33225700-9a00-4c00-84dd-0c210f203f01',
      delegatedPermissions: ['full'],
      applicationPermissions: ['none']
    }
  ],
  etag: 'RVRhZw=='
};

await client.api('/storage/fileStorage/containerTypeRegistrations/de988700-d700-020e-0a00-0831f3042f00')
	.version('beta')
	.update(fileStorageContainerTypeRegistration);

```