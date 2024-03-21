---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

IdentityProviderBase result = graphClient.directory().federationConfigurations().byIdentityProviderBaseId("{identityProviderBase-id}").get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "domains/any(x: x/id eq 'contoso.com')";
});


```