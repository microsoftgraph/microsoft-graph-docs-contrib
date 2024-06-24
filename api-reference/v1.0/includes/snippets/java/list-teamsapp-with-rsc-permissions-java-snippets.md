---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

TeamsAppCollectionResponse result = graphClient.appCatalogs().teamsApps().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "id eq 'a5228c26-a9ae-4702-90e0-79a5246d2f7d'";
	requestConfiguration.queryParameters.expand = new String []{"appDefinitions($select=id,authorization)"};
});


```