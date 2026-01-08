---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.IdentityAccountsCollectionResponse result = graphClient.security().identities().identityAccounts().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "onPremisesSecurityIdentifier eq 'S-1-5-21-989687458-3461180213-172365591-281652'";
});


```