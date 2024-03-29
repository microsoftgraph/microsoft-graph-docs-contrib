---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamsAppCollectionResponse result = graphClient.appCatalogs().teamsApps().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "id eq '876df28f-2e78-423b-94a5-44181bd0e225'";
	requestConfiguration.queryParameters.expand = new String []{"appDefinitions"};
});


```