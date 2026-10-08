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
sourceUserIdentity.setUserPrincipalName("source-user@contoso.onmicrosoft.com");
parameters.setSourceUserIdentity(sourceUserIdentity);
UserIdentity targetUserIdentity = new UserIdentity();
targetUserIdentity.setUserPrincipalName("target-user@fabrico.onmicrosoft.com");
parameters.setTargetUserIdentity(targetUserIdentity);
sharePointMigrationTask.setParameters(parameters);
SharePointMigrationTask result = graphClient.solutions().sharePoint().migrations().crossOrganizationMigrationTasks().post(sharePointMigrationTask);


```