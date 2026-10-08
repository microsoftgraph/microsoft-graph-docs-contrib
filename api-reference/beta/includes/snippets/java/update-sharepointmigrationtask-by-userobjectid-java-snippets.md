---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointMigrationTask sharePointMigrationTask = new SharePointMigrationTask();
SharePointUserMigrationTaskParameters parameters = new SharePointUserMigrationTaskParameters();
parameters.setOdataType("#microsoft.graph.sharePointUserMigrationTaskParameters");
parameters.setTargetOrganizationHost("https://fabrico-my.sharepoint.com");
UserIdentity sourceUserIdentity = new UserIdentity();
sourceUserIdentity.setId("da157a29-f793-4dd6-9c73-41d2c73c2546");
parameters.setSourceUserIdentity(sourceUserIdentity);
UserIdentity targetUserIdentity = new UserIdentity();
targetUserIdentity.setId("cb53ea98-6151-44cc-9c21-098a3c3e3988");
parameters.setTargetUserIdentity(targetUserIdentity);
sharePointMigrationTask.setParameters(parameters);
SharePointMigrationTask result = graphClient.solutions().sharePoint().migrations().crossOrganizationMigrationTasks().post(sharePointMigrationTask);


```