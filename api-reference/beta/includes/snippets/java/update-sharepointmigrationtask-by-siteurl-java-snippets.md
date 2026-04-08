---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SharePointMigrationTask sharePointMigrationTask = new SharePointMigrationTask();
SharePointSiteMigrationTaskParameters parameters = new SharePointSiteMigrationTaskParameters();
parameters.setOdataType("#microsoft.graph.sharePointSiteMigrationTaskParameters");
parameters.setTargetOrganizationHost("https://fabrico-my.sharepoint.com");
parameters.setSourceSiteUrl("https://contoso.sharepoint.com/sites/IT");
parameters.setTargetSiteUrl("https://fabrico.sharepoint.com/sites/IT");
sharePointMigrationTask.setParameters(parameters);
SharePointMigrationTask result = graphClient.solutions().sharePoint().migrations().crossOrganizationMigrationTasks().post(sharePointMigrationTask);


```