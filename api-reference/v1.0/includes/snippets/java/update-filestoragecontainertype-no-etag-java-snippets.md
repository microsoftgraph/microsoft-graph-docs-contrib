---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FileStorageContainerType fileStorageContainerType = new FileStorageContainerType();
fileStorageContainerType.setOdataType("#microsoft.graph.fileStorageContainerType");
FileStorageContainerTypeSettings settings = new FileStorageContainerTypeSettings();
settings.setUrlTemplate("https://app.contoso.com/redirect?tenant={tenant-id}&drive={drive-id}&folder={folder-id}&item={item-id}");
settings.setIsItemVersioningEnabled(true);
settings.setIsSharingRestricted(false);
fileStorageContainerType.setSettings(settings);
FileStorageContainerType result = graphClient.storage().fileStorage().containerTypes().byFileStorageContainerTypeId("{fileStorageContainerType-id}").patch(fileStorageContainerType);


```