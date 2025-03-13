---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServiceHealth result = graphClient.admin().serviceAnnouncement().healthOverviews().byServiceHealthId("{serviceHealth-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"issues"};
});


```