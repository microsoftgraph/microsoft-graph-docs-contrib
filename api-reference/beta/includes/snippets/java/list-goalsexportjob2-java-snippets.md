---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GoalsExportJobCollectionResponse result = graphClient.employeeExperience().goals().exportJobs().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = " goalsOrganizationId eq '3d9a8150-90fd-42bd-9777-25ba783d4a05'";
});


```