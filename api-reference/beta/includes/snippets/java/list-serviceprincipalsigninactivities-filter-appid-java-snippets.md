---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipalSignInActivityCollectionResponse result = graphClient.reports().servicePrincipalSignInActivities().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "appId eq 'f4d9654f-0305-4072-878c-8bf266dfe146'";
});


```