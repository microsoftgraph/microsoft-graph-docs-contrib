---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointMigrationJob sharePointMigrationJob = new SharePointMigrationJob();
SharePointMigrationContainerInfo containerInfo = new SharePointMigrationContainerInfo();
containerInfo.setDataContainerUri("https://spoxxx.blob.core.windows.net/data?sp=rw&sig=");
containerInfo.setMetadataContainerUri("https://spoxxx.blob.core.windows.net/metadata?sp=rw&sig=");
containerInfo.setEncryptionKey("base64 encoded key for AES-256-CBC encryption");
sharePointMigrationJob.setContainerInfo(containerInfo);
SharePointMigrationJob result = graphClient.storage().fileStorage().containers().byFileStorageContainerId("{fileStorageContainer-id}").migrationJobs().post(sharePointMigrationJob);


```