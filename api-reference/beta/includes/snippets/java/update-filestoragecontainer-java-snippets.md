---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FileStorageContainer fileStorageContainer = new FileStorageContainer();
fileStorageContainer.setDisplayName("Updated Name");
fileStorageContainer.setDescription("Updated Description");
FileStorageContainerSettings settings = new FileStorageContainerSettings();
settings.setIsOcrEnabled(false);
settings.setItemDefaultSensitivityLabelId("3d8789ae-7375-4ded-8eeb-d6bc226e42fb");
fileStorageContainer.setSettings(settings);
FileStorageContainer result = graphClient.storage().fileStorage().containers().byFileStorageContainerId("{fileStorageContainer-id}").patch(fileStorageContainer);


```