---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

GoalsExportJobCollectionResponse result = graphClient.employeeExperience().goals().exportJobs().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = " explorerViewId eq ‘9ab0fcab-c1d4-4b26-963b-a3c33155f853’";
});


```