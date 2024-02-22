---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.security.SslCertificateCollectionResponse result = graphClient.security().threatIntelligence().sslCertificates().get(requestConfiguration -> {
	requestConfiguration.queryParameters.search = "\"subject/commonName:microsoft.com\"";
	requestConfiguration.queryParameters.count = true;
	requestConfiguration.queryParameters.top = 1;
});


```