---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ServicePrincipalCollectionResponse result = graphClient.servicePrincipals().get(requestConfiguration -> {
	requestConfiguration.queryParameters.select = new String []{"id", "appId", "displayName"};
	requestConfiguration.queryParameters.filter = "appId in('e8c77dc2-69b3-43f4-bc51-3213c9d915b4','aebc6443-996d-45c2-90f0-388ff96faa56')";
});


```