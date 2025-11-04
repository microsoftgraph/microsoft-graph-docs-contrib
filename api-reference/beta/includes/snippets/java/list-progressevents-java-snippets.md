---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointMigrationEventCollectionResponse result = graphClient.storage().fileStorage().containers().byFileStorageContainerId("{fileStorageContainer-id}").migrationJobs().bySharePointMigrationJobId("{sharePointMigrationJob-id}").progressEvents().get();


```