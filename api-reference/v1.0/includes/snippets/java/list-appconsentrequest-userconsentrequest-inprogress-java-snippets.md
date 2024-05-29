---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AppConsentRequestCollectionResponse result = graphClient.identityGovernance().appConsent().appConsentRequests().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "userConsentRequests/any (u:u/status eq 'InProgress')";
});


```