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
HashMap<String, Object> additionalData = new HashMap<String, Object>();
 settings = new ();
settings.setIsOcrEnabled(true);
additionalData.put("settings", settings);
fileStorageContainer.setAdditionalData(additionalData);
FileStorageContainer result = graphClient.storage().fileStorage().containers().post(fileStorageContainer);


```