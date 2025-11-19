---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

WebApplicationFirewallVerificationModelCollectionResponse result = graphClient.identity().riskPrevention().webApplicationFirewallVerifications().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"provider"};
});


```