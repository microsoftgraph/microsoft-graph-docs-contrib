---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FileStorageContainerTypeAppPermissionGrant fileStorageContainerTypeAppPermissionGrant = new FileStorageContainerTypeAppPermissionGrant();
LinkedList<FileStorageContainerTypeAppPermission> applicationPermissions = new LinkedList<FileStorageContainerTypeAppPermission>();
applicationPermissions.add(FileStorageContainerTypeAppPermission.Full);
fileStorageContainerTypeAppPermissionGrant.setApplicationPermissions(applicationPermissions);
FileStorageContainerTypeAppPermissionGrant result = graphClient.storage().fileStorage().containerTypeRegistrations().byFileStorageContainerTypeRegistrationId("{fileStorageContainerTypeRegistration-id}").applicationPermissionGrants().byFileStorageContainerTypeAppPermissionGrantAppId("{fileStorageContainerTypeAppPermissionGrant-appId}").patch(fileStorageContainerTypeAppPermissionGrant);


```