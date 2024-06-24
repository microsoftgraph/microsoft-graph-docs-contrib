---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppCredentialSignInActivityCollectionResponse result = graphClient.reports().appCredentialSignInActivities().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "keyId eq '83f45296-fb8f-4aaa-a399-ac51084e02b7'";
});


```