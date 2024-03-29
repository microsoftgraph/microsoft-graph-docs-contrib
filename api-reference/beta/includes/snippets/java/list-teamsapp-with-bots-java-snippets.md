---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamsAppCollectionResponse result = graphClient.appCatalogs().teamsApps().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"appDefinitions($expand=bot)"};
	requestConfiguration.queryParameters.filter = "appDefinitions/any(a:a/bot ne null)";
});


```