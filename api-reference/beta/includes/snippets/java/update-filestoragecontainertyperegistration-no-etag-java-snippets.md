---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FileStorageContainerTypeRegistration fileStorageContainerTypeRegistration = new FileStorageContainerTypeRegistration();
FileStorageContainerTypeRegistrationSettings settings = new FileStorageContainerTypeRegistrationSettings();
settings.setSharingCapability(SharingCapabilities.ExternalUserAndGuestSharing);
fileStorageContainerTypeRegistration.setSettings(settings);
LinkedList<FileStorageContainerTypeAppPermissionGrant> applicationPermissionGrants = new LinkedList<FileStorageContainerTypeAppPermissionGrant>();
FileStorageContainerTypeAppPermissionGrant fileStorageContainerTypeAppPermissionGrant = new FileStorageContainerTypeAppPermissionGrant();
fileStorageContainerTypeAppPermissionGrant.setAppId("33225700-9a00-4c00-84dd-0c210f203f01");
LinkedList<FileStorageContainerTypeAppPermission> delegatedPermissions = new LinkedList<FileStorageContainerTypeAppPermission>();
delegatedPermissions.add(FileStorageContainerTypeAppPermission.Full);
fileStorageContainerTypeAppPermissionGrant.setDelegatedPermissions(delegatedPermissions);
LinkedList<FileStorageContainerTypeAppPermission> applicationPermissions = new LinkedList<FileStorageContainerTypeAppPermission>();
applicationPermissions.add(FileStorageContainerTypeAppPermission.None);
fileStorageContainerTypeAppPermissionGrant.setApplicationPermissions(applicationPermissions);
applicationPermissionGrants.add(fileStorageContainerTypeAppPermissionGrant);
fileStorageContainerTypeRegistration.setApplicationPermissionGrants(applicationPermissionGrants);
FileStorageContainerTypeRegistration result = graphClient.storage().fileStorage().containerTypeRegistrations().byFileStorageContainerTypeRegistrationId("{fileStorageContainerTypeRegistration-id}").patch(fileStorageContainerTypeRegistration);


```