---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

MessageCollectionResponse result = graphClient.me().messages().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "Extensions/any(f:f/id eq 'Com.Contoso.Referral')";
	requestConfiguration.queryParameters.expand = new String []{"Extensions($filter=id eq 'Com.Contoso.Referral')"};
});


```