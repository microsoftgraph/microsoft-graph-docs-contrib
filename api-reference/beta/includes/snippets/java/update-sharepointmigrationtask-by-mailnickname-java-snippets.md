---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointMigrationTask sharePointMigrationTask = new SharePointMigrationTask();
SharePointGroupMigrationTaskParameters parameters = new SharePointGroupMigrationTaskParameters();
parameters.setOdataType("#microsoft.graph.sharePointGroupMigrationTaskParameters");
parameters.setTargetOrganizationHost("https://fabrico-my.sharepoint.com");
GroupIdentity sourceGroupIdentity = new GroupIdentity();
sourceGroupIdentity.setMailNickname("source-group");
parameters.setSourceGroupIdentity(sourceGroupIdentity);
GroupIdentity targetGroupIdentity = new GroupIdentity();
targetGroupIdentity.setMailNickname("target-group");
parameters.setTargetGroupIdentity(targetGroupIdentity);
sharePointMigrationTask.setParameters(parameters);
SharePointMigrationTask result = graphClient.solutions().sharePoint().migrations().crossOrganizationMigrationTasks().post(sharePointMigrationTask);


```