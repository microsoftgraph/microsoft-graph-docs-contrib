---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GoalsExportJobCollectionPage exportJobs = graphClient.employeeExperience().goals().exportJobs()
	.buildRequest()
	.get();

```