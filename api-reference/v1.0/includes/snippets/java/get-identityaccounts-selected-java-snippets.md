---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.IdentityAccounts result = graphClient.security().identities().identityAccounts().byIdentityAccountsId("{identityAccounts-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"accounts"};
});


```