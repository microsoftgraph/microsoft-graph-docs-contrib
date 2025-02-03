---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamsAppCollectionResponse result = graphClient.appCatalogs().teamsApps().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "externalId eq 'cf1ba4c7-f94e-4d80-ba90-5594b641a8ee'";
});


```