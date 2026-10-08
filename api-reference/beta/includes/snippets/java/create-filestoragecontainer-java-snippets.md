---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FileStorageContainer fileStorageContainer = new FileStorageContainer();
fileStorageContainer.setDisplayName("My Application Storage Container");
fileStorageContainer.setDescription("Description of My Application Storage Container");
fileStorageContainer.setContainerTypeId(UUID.fromString("91710488-5756-407f-9046-fbe5f0b4de73"));
FileStorageContainerSettings settings = new FileStorageContainerSettings();
settings.setIsOcrEnabled(true);
settings.setItemMajorVersionLimit(50);
settings.setIsItemVersioningEnabled(true);
settings.setItemDefaultSensitivityLabelId("3d8789ae-7375-4ded-8eeb-d6bc226e42fb");
fileStorageContainer.setSettings(settings);
FileStorageContainer result = graphClient.storage().fileStorage().containers().post(fileStorageContainer);


```