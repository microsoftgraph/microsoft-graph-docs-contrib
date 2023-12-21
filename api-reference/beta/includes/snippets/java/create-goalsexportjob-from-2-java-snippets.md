---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GoalsExportJob goalsExportJob = new GoalsExportJob();
goalsExportJob.goalsOrganizationId = "String";
goalsExportJob.explorerViewId = "String";

graphClient.employeeExperience().goals().exportJobs()
	.buildRequest()
	.post(goalsExportJob);

```