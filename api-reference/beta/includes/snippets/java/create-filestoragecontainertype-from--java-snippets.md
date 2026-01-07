---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

FileStorageContainerType fileStorageContainerType = new FileStorageContainerType();
fileStorageContainerType.setName("Test Trial Container");
fileStorageContainerType.setOwningAppId(UUID.fromString("11335700-9a00-4c00-84dd-0c210f203f00"));
fileStorageContainerType.setBillingClassification(FileStorageContainerBillingClassification.Trial);
FileStorageContainerTypeSettings settings = new FileStorageContainerTypeSettings();
settings.setIsItemVersioningEnabled(true);
settings.setIsSharingRestricted(false);
settings.setConsumingTenantOverridables(EnumSet.of(FileStorageContainerTypeSettingsOverride.IsSearchEnabled, FileStorageContainerTypeSettingsOverride.ItemMajorVersionLimit));
FileStorageContainerTypeAgentSettings agent = new FileStorageContainerTypeAgentSettings();
LinkedList<String> chatEmbedAllowedHosts = new LinkedList<String>();
chatEmbedAllowedHosts.add("https://localhost:3000");
agent.setChatEmbedAllowedHosts(chatEmbedAllowedHosts);
settings.setAgent(agent);
fileStorageContainerType.setSettings(settings);
FileStorageContainerType result = graphClient.storage().fileStorage().containerTypes().post(fileStorageContainerType);


```