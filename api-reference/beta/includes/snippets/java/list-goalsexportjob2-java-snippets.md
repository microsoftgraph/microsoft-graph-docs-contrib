---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

GoalsExportJobCollectionPage exportJobs = graphClient.employeeexperience().goals().exportJobs()
	.buildRequest()
	.filter(" goalsOrganizationId eq '3d9a8150-90fd-42bd-9777-25ba783d4a05'")
	.get();

```