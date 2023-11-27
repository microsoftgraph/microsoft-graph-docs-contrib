---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GoalsExportJob goalsExportJob = graphClient.employeeExperience().goals().exportJobs("j!eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In1")
	.buildRequest()
	.get();

```