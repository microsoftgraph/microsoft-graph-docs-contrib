---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GoalsExportJob goalsExportJob = new GoalsExportJob();
goalsExportJob.setGoalsOrganizationId("String");
goalsExportJob.setExplorerViewId("String");
GoalsExportJob result = graphClient.employeeExperience().goals().exportJobs().post(goalsExportJob);


```